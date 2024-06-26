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
      identifier = { name = "hoe"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2010 Hideyuki Tanaka";
      maintainer = "tanaka.hideyuki@gmail.com";
      author = "Hideyuki Tanaka";
      homepage = "http://github.com/tanakh/hoe";
      url = "";
      synopsis = "Haskell One-liner Evaluator";
      description = "@hoe@ is a Haskell one-liner evaluator.\nIt can evaluate a script in various ways depending on it's type.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hoe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          ];
          buildable = true;
        };
      };
    };
  }