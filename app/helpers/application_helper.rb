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
      "font-medium border-black "
    else
      "font-medium border-grey "
    end
  end
end
