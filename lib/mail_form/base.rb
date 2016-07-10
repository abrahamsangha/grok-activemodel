module MailForm
  class Base
    include ActiveModel::Conversion
    extend ActiveModel::Naming
    extend ActiveModel::Translation
    include ActiveModel::Validations

    def self.attributes(*attrs)
      attr_accessor(*attrs)
    end

    def to_model
      self
    end

    def persisted?
      false
    end
  end
end
