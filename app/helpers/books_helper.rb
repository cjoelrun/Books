module BooksHelper
  def ip() 
    request.env['HTTP_X_FORWARDED_FOR'] || request.remote_ip 
  end
end
