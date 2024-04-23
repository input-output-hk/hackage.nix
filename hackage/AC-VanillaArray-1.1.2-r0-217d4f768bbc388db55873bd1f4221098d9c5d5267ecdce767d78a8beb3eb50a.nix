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
      identifier = { name = "AC-VanillaArray"; version = "1.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andrew Coppin <MathematicalOrchid@hotmail.com>";
      author = "Andrew Coppin";
      homepage = "";
      url = "";
      synopsis = "Immutable arrays with plain integer indicies.";
      description = "This package is a thin layer over GHC's low-level array\nprimitives. It provides arrays with zero-origin integers\nfor indicies. (These arrays also lack bounds checks.)\nThey come in two flavours: mutable or immutable. (Both\nare boxed and lazy, however. There are no unboxed arrays\nhere.)\nThe idea is that you can use this package as a starting\npoint for building a more useful array package, without\nhaving to learn all GHC's low-level internals for yourself.\nChanges:\n* Now builds with GHC 6.12.1";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
        ];
        buildable = true;
      };
    };
  }