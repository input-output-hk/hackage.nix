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
      specVersion = "1.6";
      identifier = { name = "monad-ox"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012 IPI PAN";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "https://github.com/kawu/monad-ox";
      url = "";
      synopsis = "Monad for observation extraction";
      description = "The library provides an Ox monad and accompanying functions which\nare intended to simplify writing functional expressions over input\nsentence with arbitrary type of token.  Values of such functional\nexpressions can be subsequently used as observations in input data\nfor sequential classifiers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."data-memocombinators" or (errorHandler.buildDepError "data-memocombinators"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }