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
      specVersion = "1.8";
      identifier = { name = "sexp-show"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "none";
      author = "Chris Done";
      homepage = "";
      url = "";
      synopsis = "Produce a s-expression representation of Show values.";
      description = "Program to produce a s-expression representation of Show values.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "sexp-show" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
          ];
          buildable = true;
        };
      };
    };
  }