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
        name = "pipes-bzip";
        version = "0.2.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2012, Hideyuki Tanaka";
      maintainer = "Alexey Smirnov";
      author = "Hideyuki Tanaka, Alexey Smirnov";
      homepage = "https://github.com/chemist/pipes-bzip";
      url = "";
      synopsis = "Streaming compression/decompression via pipes.";
      description = "Streaming compression/decompression via pipes.";
      buildType = "Simple";
    };
    components = {
      "pipes-bzip" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.pipes)
          (hsPkgs.pipes-safe)
          (hsPkgs.data-default)
          (hsPkgs.bindings-DSL)
        ];
        libs = [ (pkgs.bz2) ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.pipes-bzip)
            (hsPkgs.pipes-safe)
            (hsPkgs.pipes-bytestring)
            (hsPkgs.pipes)
            (hsPkgs.directory)
            (hsPkgs.MonadRandom)
            (hsPkgs.bzlib)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.pipes-bzip)
          ];
        };
      };
    };
  }