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
      specVersion = "2.4";
      identifier = { name = "deriving-show-simple"; version = "0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2020 Fumiaki Kinoshita";
      maintainer = "fumiexcel@gmail.com";
      author = "Fumiaki Kinoshita";
      homepage = "";
      url = "";
      synopsis = "Derive a Show instance without field selector names";
      description = "GHC's stock deriving includes field names to a Show representation, but sometimes it's not desiable.\nThis package provides a wrapper which has a Show instance as if the type were not a record.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."deriving-show-simple" or (errorHandler.buildDepError "deriving-show-simple"))
            ];
          buildable = true;
          };
        };
      };
    }