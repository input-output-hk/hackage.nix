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
      specVersion = "3.0";
      identifier = { name = "cgroup-rts-threads"; version = "0.2.1.1"; };
      license = "MPL-2.0";
      copyright = "";
      maintainer = "connornjames@gmail.com";
      author = "Connor James";
      homepage = "https://github.com/cnr/cgroup-rts-threads";
      url = "";
      synopsis = "A container-/cgroup-aware substitute for the GHC RTS `-N` flag";
      description = "This library provides a container-/cgroup-aware substitute for the GHC RTS\n`-N` flag. See the README for details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."path" or (errorHandler.buildDepError "path"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cgroup-rts-threads" or (errorHandler.buildDepError "cgroup-rts-threads"))
            (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
            (hsPkgs."hspec-expectations" or (errorHandler.buildDepError "hspec-expectations"))
            (hsPkgs."path" or (errorHandler.buildDepError "path"))
            (hsPkgs."path-io" or (errorHandler.buildDepError "path-io"))
            ];
          buildable = true;
          };
        };
      };
    }