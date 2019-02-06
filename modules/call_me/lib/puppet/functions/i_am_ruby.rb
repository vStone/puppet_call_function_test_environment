Puppet::Functions.create_function(:i_am_ruby) do

  dispatch :iamruby do
  end

  def iamruby
    "Puppet ruby 4.x function"
  end


end
