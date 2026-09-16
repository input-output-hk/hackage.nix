{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "encapsule"; version = "0.5.1"; };
      license = "Apache-2.0";
      copyright = "2026  Jens Petersen <juhpetersen@gmail.com>";
      maintainer = "Jens Petersen <juhpetersen@gmail.com>";
      author = "Jens Petersen <juhpetersen@gmail.com>";
      homepage = "https://github.com/juhp/encapsule";
      url = "";
      synopsis = "Run isolated toolbox containers with podman";
      description = "This tool (originally based on the toolbox-constrained project)\nallows running isolated toolbox containers with podman.\nMounting of home and host integration are not enabled by default,\nbut one can choose options to do so including capabilities\nspecified in a toml configuration file.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "encapsule" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."pretty-terminal" or (errorHandler.buildDepError "pretty-terminal"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."shell-monad" or (errorHandler.buildDepError "shell-monad"))
            (hsPkgs."simple-cmd" or (errorHandler.buildDepError "simple-cmd"))
            (hsPkgs."simple-cmd-args" or (errorHandler.buildDepError "simple-cmd-args"))
            (hsPkgs."simple-prompt" or (errorHandler.buildDepError "simple-prompt"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."toml-reader" or (errorHandler.buildDepError "toml-reader"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."xdg-basedir" or (errorHandler.buildDepError "xdg-basedir"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.encapsule.components.exes.encapsule or (pkgs.pkgsBuildBuild.encapsule or (errorHandler.buildToolDepError "encapsule:encapsule")))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.encapsule.components.exes.encapsule or (pkgs.pkgsBuildBuild.encapsule or (errorHandler.buildToolDepError "encapsule:encapsule")))
          ];
          buildable = true;
        };
      };
    };
  }