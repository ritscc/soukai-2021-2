require 'erb'
require 'pathname'

module Template
  class GenericTemplate
    TEMPLATE_BASE_PATH = Pathname.new('../template')

    def initialize(template_path)
      @template_path = template_path
    end

    def save(path)
      File.open(@path, "w") do |file|
        file << self.build
      end
    end

    def build
      template = ERB.new File.read(@template_path)
      template.result(binding)
    end
  end

  # 文書のテンプレート
  class DocumentTemplate < GenericTemplate
    PATH = TEMPLATE_BASE_PATH + 'document.tex.erb'

    attr_writer :date

    def initialize(template_path = PATH)
      super(template_path)
    end
  end

  # 担当者の割り当てが出来る文書のテンプレート
  class SubSectionTemplate < GenericTemplate
    PATH = TEMPLATE_BASE_PATH + 'section.tex.erb'

    attr_writer :title, :assignee

    def initialize(template_path = PATH)
      super(template_path)
    end
  end

  # READMEのテンプレート
  class ReadmeTemplate < GenericTemplate
    PATH = TEMPLATE_BASE_PATH + 'README.md.erb'

    attr_writer :date, :repository

    def initialize(template_path = PATH)
      super(template_path)
    end
  end
end
