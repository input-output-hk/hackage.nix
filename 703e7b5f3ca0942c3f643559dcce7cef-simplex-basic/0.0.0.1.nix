{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "simplex-basic";
        version = "0.0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Athan Clark <athan.clark@gmail.com>";
      author = "Athan Clark <athan.clark@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Very basic simplex implementation.";
      description = "Warning: This package is no longer supported.";
      buildType = "Simple";
    };
    components = {
      "simplex-basic" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.linear-grammar)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.bifunctors)
          (hsPkgs.QuickCheck)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.linear-grammar)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.bifunctors)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }