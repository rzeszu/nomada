module ApplicationHelper
  def cp(path)
    if params[:controller] == path
    	" font-normal"
    else
    	""
    end
  end

  def active(path)
    if params[:show].to_i == path
      "font-normal bg-grey-light "
    else
      "font-light bg-grey-lighter text-grey-dark "
    end
  end
end
