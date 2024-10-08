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
      specVersion = "1.2";
      identifier = { name = "uvector-algorithms"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Dan Doel <dan.doel@gmail.com>";
      author = "Dan Doel";
      homepage = "http://code.haskell.org/~dolio/";
      url = "";
      synopsis = "Efficient algorithms for uvector unboxed arrays";
      description = "Efficient algorithms for uvector unboxed arrays\nbe sure to compile with -O2, and -fvia-C -optc-O3 is\nrecommended.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."uvector" or (errorHandler.buildDepError "uvector"))
        ];
        buildable = true;
      };
    };
  }