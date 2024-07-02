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
      identifier = { name = "ghc-boot-th"; version = "9.6.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ghc-devs@haskell.org";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Shared functionality between GHC and the @template-haskell@\nlibrary";
      description = "This library contains various bits shared between the @ghc@ and\n@template-haskell@ libraries.\n\nThis package exists to ensure that @template-haskell@ has a\nminimal set of transitive dependencies, since it is intended to\nbe depended upon by user code.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }