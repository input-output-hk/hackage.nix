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
      specVersion = "1.10";
      identifier = { name = "threads-extras"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "skedge.me";
      maintainer = "jonathangfischoff@gmail.com";
      author = "Jonathan Fischoff";
      homepage = "";
      url = "";
      synopsis = "Extends the threads package with a bounded thread group";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."threads" or (errorHandler.buildDepError "threads"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          ];
        buildable = true;
        };
      tests = {
        "threads-extras-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."threads-extras" or (errorHandler.buildDepError "threads-extras"))
            ];
          buildable = true;
          };
        };
      };
    }