class Which
  def self.which(cmd)
    paths = ENV['PATH'].split(File::PATH_SEPARATOR)
    exts = ['']
    if ENV['PATHEXT']
      exts += ENV['PATHEXT'].split(';')
    end
    paths.each do |path|
      exts.each do |ext|
        begin
          exe = File.join(path, cmd + ext)
          fs = File::Stat.new(exe)
          if fs.executable?
            return exe
          end
        rescue RuntimeError
        end
      end
    end
    return nil
  end
end

