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
      identifier = { name = "typeparams"; version = "0.0.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mike@izbicki.me";
      author = "Mike izbicki";
      homepage = "http://github.com/mikeizbicki/typeparams/";
      url = "";
      synopsis = "Lens-like interface for type level parameters; allows unboxed unboxed vectors and supercompilation";
      description = "This library provides a lens-like interface for working with type parameters. In the code:\n\n> data Example p1 (p2::Config Nat) (p3::Constraint) = Example\n\n@p1@, @p2@, and @p3@ are the type parameters.\n\nTwo example uses of this library are for unboxing unboxed vectors and supercompilation-like optimizations.   Please see the <https://github.com/mikeizbicki/typeparams#the-typeparams-library README file on github> for a detailed description and tutorial.  After reading through that, the haddock documentation will make more sense.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }