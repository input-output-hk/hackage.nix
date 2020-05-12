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
    flags = { build-example = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "peggy"; version = "0.3.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c)2011, Hideyuki Tanaka";
      maintainer = "Hideyuki Tanaka <tanaka.hideyuki@gmail.com>";
      author = "Hideyuki Tanaka";
      homepage = "http://tanakh.github.com/Peggy";
      url = "";
      synopsis = "The Parser Generator for Haskell";
      description = "The Parser Generator for Haskell\n<http://tanakh.github.com/Peggy>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."ListLike" or (errorHandler.buildDepError "ListLike"))
          (hsPkgs."hashtables" or (errorHandler.buildDepError "hashtables"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."haskell-src-meta" or (errorHandler.buildDepError "haskell-src-meta"))
          ];
        buildable = true;
        };
      exes = {
        "peggy-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."peggy" or (errorHandler.buildDepError "peggy"))
            ];
          buildable = if !flags.build-example then false else true;
          };
        };
      };
    }