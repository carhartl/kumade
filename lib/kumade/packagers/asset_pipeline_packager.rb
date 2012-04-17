module Kumade
  class AssetPipelinePackager
    def self.assets_path
      File.join(public_root, "assets")
    end

    def self.installed?
      true
    end

    def self.package
      `bundle exec rake assets:precompile RAILS_ENV=#{Kumade.configuration.environment}`
    end

    private

    def self.public_root
      "public"
    end
  end
end
