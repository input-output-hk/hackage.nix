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
      identifier = { name = "unbound-kind-generics"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "trupill@gmail.com";
      author = "Alejandro Serrano";
      homepage = "";
      url = "";
      synopsis = "Support for programming with names and binders using kind-generics";
      description = "Specify the binding structure of your data type with an\nexpressive set of type combinators, and unbound-generics\nhandles the rest!  Automatically derives\nalpha-equivalence, free variable calculation,\ncapture-avoiding substitution, and more. See\n@Unbound.Generics.LocallyNameless.Kind.Derive@ to get started.\n\nThis is an independent re-implementation of <http://hackage.haskell.org/package/unbound-generics unbound-generics>\nbut using <https://hackage.haskell.org/package/kind-generics kind-generics>\ninstead of <https://hackage.haskell.org/package/base/docs/GHC-Generics.html GHC Generics>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unbound-generics" or (errorHandler.buildDepError "unbound-generics"))
          (hsPkgs."kind-generics" or (errorHandler.buildDepError "kind-generics"))
          (hsPkgs."kind-generics-th" or (errorHandler.buildDepError "kind-generics-th"))
        ];
        buildable = true;
      };
    };
  }