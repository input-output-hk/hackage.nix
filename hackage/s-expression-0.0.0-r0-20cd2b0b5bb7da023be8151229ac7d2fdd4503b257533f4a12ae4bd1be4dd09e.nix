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
      identifier = { name = "s-expression"; version = "0.0.0"; };
      license = "MIT";
      copyright = "Copyright (C) 2015 Spiros M. Boosalis";
      maintainer = "samboosalis@gmail.com";
      author = "Spiros Boosalis";
      homepage = "https://github.com/sboosali/s-expression#readme";
      url = "";
      synopsis = "simple general-purpose s-expressions ";
      description = "this package provides general-purpose functionality for manipulating s-expressions. like:\n\n* a @Functor@ instance that transforms the atoms\n\n* a @Monad@ instance that \"expands\" atoms into s-expressions\n\n* a @Foldable@ instance that enumerates the atoms (leaves)\n\n* @IsList@ and @IsString@ instances for literal syntax\n\n*\n\n*\n\n*\n\nthe core type is:\n\n@\ndata <https://hackage.haskell.org/package/s-expression/docs//Data-Sexp.html Sexp> f a\n= Atom a\n| List   [Sexp f a]\n| Sexp f [Sexp f a]\n@\n\nwhich lets you provide your own custom function name that interprets its arguments.\n\ne.g. TODO\n\nfor efficient parsing/printing, use:\n\n* https://hackage.haskell.org/package/sexp\n\n* https://hackage.haskell.org/package/atto-lisp\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."derive-monoid" or (errorHandler.buildDepError "derive-monoid"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          ];
        buildable = true;
        };
      exes = {
        "example-s-expressions" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."s-expression" or (errorHandler.buildDepError "s-expression"))
            ];
          buildable = true;
          };
        };
      };
    }