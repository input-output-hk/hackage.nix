{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      development = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "hs2ats";
          version = "0.2.1.7";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2018 Vanessa McHale";
        maintainer = "vamchale@gmail.com";
        author = "Vanessa McHale";
        homepage = "https://github.com/vmchale/hs2ats#readme";
        url = "";
        synopsis = "Create ATS types from Haskell types";
        description = "This package enables scanning Haskell source files for data types and then generating [ATS](http://www.ats-lang.org/) types from them.";
        buildType = "Simple";
      };
      components = {
        hs2ats = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell-src-exts
            hsPkgs.language-ats
            hsPkgs.casing
            hsPkgs.lens
            hsPkgs.optparse-generic
            hsPkgs.ansi-wl-pprint
            hsPkgs.composition-prelude
            hsPkgs.deepseq
            hsPkgs.cpphs
          ];
        };
        exes = {
          hs2ats = {
            depends  = [
              hsPkgs.base
              hsPkgs.hs2ats
            ];
          };
        };
        tests = {
          hs2ats-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.hs2ats
              hsPkgs.hspec
              hsPkgs.hspec-dirstream
              hsPkgs.system-filepath
            ];
          };
        };
        benchmarks = {
          hs2ats-bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.hs2ats
              hsPkgs.criterion
            ];
          };
        };
      };
    }