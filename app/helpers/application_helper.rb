module ApplicationHelper

    def humanize_boolean(value)
      case value
      when true
        "Ativo"
      when false
        "Inativo"
      when nil
        "Undefined"
      else
        "Invalid"
      end
    end
  
  end
  