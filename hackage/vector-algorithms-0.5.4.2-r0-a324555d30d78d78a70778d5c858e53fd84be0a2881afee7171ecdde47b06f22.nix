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
    flags = {
      boundschecks = true;
      unsafechecks = false;
      internalchecks = false;
      };
    package = {
      specVersion = "1.2.3";
      identifier = { name = "vector-algorithms"; version = "0.5.4.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Dan Doel <dan.doel@gmail.com>";
      author = "Dan Doel";
      homepage = "http://code.haskell.org/~dolio/";
      url = "";
      synopsis = "Efficient algorithms for vector arrays";
      description = "Efficient algorithms for vector arrays";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      };
    }