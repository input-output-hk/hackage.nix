{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "skip-var"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "2018 Daniel Taskoff";
      maintainer = "Daniel Taskoff <daniel.taskoff@gmail.com>, Georgi Lyubenov <godzbanebane@gmail.com>";
      author = "Daniel Taskoff <daniel.taskoff@gmail.com>, Georgi Lyubenov <godzbanebane@gmail.com>";
      homepage = "https://github.com/dtaskoff/skip-var#readme";
      url = "";
      synopsis = "Skip variables";
      description = "Please see the README on GitHub at <https://github.com/dtaskoff/skip-var#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }