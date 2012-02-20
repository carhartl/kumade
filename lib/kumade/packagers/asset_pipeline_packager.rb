# begin
#   require "jammit"
# rescue LoadError
# end

module Kumade
  class AssetPipelinePackager
    def self.assets_path
      File.join(public_root, "assets")
    end

    def self.installed?
      true
    end

    def self.package
      # need to call rake task?
      `bundle exec rake assets:precompile`
    end

    private

    def self.public_root
      "public"
    end
  end
end
