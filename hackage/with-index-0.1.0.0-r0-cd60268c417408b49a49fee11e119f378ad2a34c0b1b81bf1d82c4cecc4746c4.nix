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
      identifier = { name = "with-index"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Phil Freeman";
      maintainer = "Phil Freeman";
      author = "Phil Freeman";
      homepage = "https://github.com/paf31/with-index";
      url = "";
      synopsis = "A tiny library for composing indexed traversals";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }