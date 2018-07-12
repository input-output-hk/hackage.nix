{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hw-diagnostics";
          version = "0.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2016 John Ky";
        maintainer = "newhoggy@gmail.com";
        author = "John Ky";
        homepage = "http://github.com/haskell-works/hw-diagnostics#readme";
        url = "";
        synopsis = "Conduits for tokenizing streams.";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "hw-diagnostics" = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.deepseq
            hsPkgs.ghc-prim
            hsPkgs.lens
            hsPkgs.mmap
            hsPkgs.mono-traversable
            hsPkgs.parsec
            hsPkgs.QuickCheck
            hsPkgs.random
            hsPkgs.resourcet
            hsPkgs.safe
            hsPkgs.text
            hsPkgs.vector
            hsPkgs.word8
          ];
        };
        exes = {
          "hw-diagnostics-example" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.criterion
              hsPkgs.hw-diagnostics
              hsPkgs.mmap
              hsPkgs.resourcet
              hsPkgs.vector
            ];
          };
        };
        tests = {
          "hw-diagnostics-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }