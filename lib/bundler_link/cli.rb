require "thor"

module BundlerLink
  class Cli < Thor
    default_command :link

    desc "link", ""
    def link
      say_status(:link, "Linking up gem")
    end
  end
end
