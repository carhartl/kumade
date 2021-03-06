require 'kumade/railtie'

module Kumade
  autoload :Git,                   "kumade/git"
  autoload :Deployer,              "kumade/deployer"
  autoload :CLI,                   "kumade/cli"
  autoload :DeploymentError,       "kumade/deployment_error"
  autoload :Configuration,         "kumade/configuration"
  autoload :Heroku,                "kumade/heroku"
  autoload :Packager,              "kumade/packager"
  autoload :JammitPackager,        "kumade/packagers/jammit_packager"
  autoload :AssetPipelinePackager, "kumade/packagers/asset_pipeline_packager"
  autoload :NoopPackager,          "kumade/packagers/noop_packager"
  autoload :PackagerList,          "kumade/packager_list"
  autoload :RakeTaskRunner,        "kumade/rake_task_runner"
  autoload :CommandLine,           "kumade/command_line"
  autoload :Outputter,             "kumade/outputter"

  def self.configuration
    @@configuration ||= Configuration.new
  end

  def self.configuration=(new_configuration)
    @@configuration = new_configuration
  end
end
