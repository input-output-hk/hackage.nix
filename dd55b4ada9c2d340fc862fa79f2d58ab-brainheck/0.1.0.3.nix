{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      llvm-fast = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "brainheck";
          version = "0.1.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2016 Vanessa McHale";
        maintainer = "tmchale@wisc.edu";
        author = "Vanessa McHale";
        homepage = "https://github.com/vmchale/brainheck#readme";
        url = "";
        synopsis = "Brainh*ck interpreter in haskell";
        description = "Brainh*ck interpreter written in haskell and taking advantage of many prominent libraries";
        buildType = "Simple";
      };
      components = {
        brainheck = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.vector
            hsPkgs.recursion-schemes
            hsPkgs.text
            hsPkgs.lens
            hsPkgs.megaparsec
            hsPkgs.containers
          ];
        };
        exes = {
          brainheck = {
            depends  = [
              hsPkgs.base
              hsPkgs.brainheck
              hsPkgs.optparse-applicative
              hsPkgs.text
            ];
          };
        };
        benchmarks = {
          brainheck-bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.brainheck
              hsPkgs.text
            ];
          };
        };
      };
    }