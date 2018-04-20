{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "brainheck";
          version = "0.1.0.0";
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
            hsPkgs.optparse-applicative
            hsPkgs.primitive
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
            ];
          };
        };
        tests = {
          brainheck-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.brainheck
            ];
          };
        };
      };
    }