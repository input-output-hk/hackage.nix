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
      specVersion = "2.2";
      identifier = { name = "staged-gg"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus, Andres Löh";
      homepage = "";
      url = "";
      synopsis = "GHC.Generics style staged generics";
      description = "GHC.Generics style staged generics.\n\nSee https://www.andres-loeh.de/StagedSOP/ paper for description of\n@staged-sop@, which is staged version of @generics-sop@.\nThe non @generics-sop@ specific parts\nlike sections on Typed Template Haskell, and Type Template Haskell and Constraints,\nare applicable to @staged-gg@ as well.\n\nThis package is an /EXPERIMENTAL/ proof-of-concept.\nIt works if you do not do anything fancy.\nBecause of current GHC Typed Template Haskell limitations,\nquite simple things are \"fancy\".\nSee https://github.com/phadej/staged-gg/tree/master/staged-gg-examples\nfor examples what you can do regardless.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."generic-deriving" or (errorHandler.buildDepError "generic-deriving"))
          (hsPkgs."th-abstraction" or (errorHandler.buildDepError "th-abstraction"))
          (hsPkgs."th-lift" or (errorHandler.buildDepError "th-lift"))
        ];
        buildable = true;
      };
    };
  }