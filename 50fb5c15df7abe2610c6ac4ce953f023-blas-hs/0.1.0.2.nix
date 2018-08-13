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
      specVersion = "1.16";
      identifier = {
        name = "blas-hs";
        version = "0.1.0.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "rf@rufflewind.com";
      author = "Phil Ruffwind";
      homepage = "https://github.com/Rufflewind/blas-hs";
      url = "";
      synopsis = "Low-level Haskell bindings to Blas.";
      description = "This package provides a complete low-level binding to\nBlas via the foreign function interface, allowing Haskell\nprograms to take advantage of optimized routines for\nvector and matrix operations in Haskell.  See the source\nrepository for more info.";
      buildType = "Simple";
    };
    components = {
      "blas-hs" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.storable-complex)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.blas-hs)
            (hsPkgs.Cabal)
            (hsPkgs.vector)
          ];
          libs = [ (pkgs.blas) ];
        };
      };
    };
  }