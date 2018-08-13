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
        name = "withdependencies";
        version = "0.2.3";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "bartavelle@gmail.com";
      author = "Simon Marechal";
      homepage = "https://github.com/bartavelle/withdependencies";
      url = "";
      synopsis = "Run computations that depend on one or more elements in a stream.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "withdependencies" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.conduit)
          (hsPkgs.mtl)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.withdependencies)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.conduit)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }