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
      specVersion = "1.12";
      identifier = { name = "hlibcpuid"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2020 (c) Daniel Taskoff";
      maintainer = "daniel.taskoff@gmail.com";
      author = "Daniel Taskoff";
      homepage = "https://github.com/dtaskoff/hlibcpuid#readme";
      url = "";
      synopsis = "Bindings to https://github.com/anrieff/libcpuid";
      description = "Please see the README on GitHub at <https://github.com/dtaskoff/hlibcpuid#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      exes = {
        "cpuid" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hlibcpuid" or (errorHandler.buildDepError "hlibcpuid"))
            ];
          buildable = true;
          };
        };
      };
    }