class Application

  def call(env)
    resp = Rack::Response.new
    first_num = Kernel.rand(1..2)
    sec_num = Kernel.rand(1..2)
    third_num = Kernel.rand(1..2)

    resp.write "#{first_num}\n"
    resp.write "#{sec_num}\n"
    resp.write "#{third_num}\n"

    if first_num == sec_num && sec_num == third_num
      resp.write "You Win!"
    else
      resp.write "You Lose!"
    end

    resp.finish
  end

end
