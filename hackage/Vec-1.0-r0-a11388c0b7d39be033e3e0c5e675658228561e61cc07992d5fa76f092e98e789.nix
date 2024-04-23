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
      identifier = { name = "Vec"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Scott E. Dillard <sedillard@gmail.com>";
      author = "Scott E. Dillard";
      homepage = "http://github.net/sedillard/Vec";
      url = "";
      synopsis = "Fixed-length lists and low-dimensional linear algebra.";
      description = "Vectors are represented by lists with type-encoded lengths. The constructor\nis @:.@, which acts like a cons both at the value and type levels, with @()@\ntaking the place of nil. So @x:.y:.z:.()@ is a 3d vector. The library\nprovides a set of common list-like functions (map, fold, etc) for working\nwith vectors. Built up from these functions are a small but useful set of\nlinear algebra operations: matrix multiplication, determinants, solving\nlinear systems, inverting matrices.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
        ];
        buildable = true;
      };
    };
  }