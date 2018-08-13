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
      specVersion = "1.8";
      identifier = {
        name = "bzlib-conduit";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2012, Hideyuki Tanaka";
      maintainer = "tanaka.hideyuki@gmail.com";
      author = "Hideyuki Tanaka";
      homepage = "https://github.com/tanakh/bzlib-conduit";
      url = "";
      synopsis = "Streaming compression/decompression via conduits.";
      description = "Streaming compression/decompression via conduits.";
      buildType = "Simple";
    };
    components = {
      "bzlib-conduit" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.conduit)
          (hsPkgs.resourcet)
          (hsPkgs.data-default)
          (hsPkgs.bindings-DSL)
        ];
        libs = pkgs.lib.optional (!system.isWindows) (pkgs."bz2");
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.conduit)
            (hsPkgs.bzlib-conduit)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.conduit)
            (hsPkgs.bzlib-conduit)
          ];
        };
      };
    };
  }