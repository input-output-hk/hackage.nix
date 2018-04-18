{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      development = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "recursion-schemes-ext";
          version = "1.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2017 Vanessa McHale";
        maintainer = "vamchale@gmail.com";
        author = "Vanessa McHale";
        homepage = "https://hub.darcs.net/vmchale/recursion-schemes-ext#readme";
        url = "";
        synopsis = "Amateur addenda to recursion-schemes";
        description = "This package provides some exotic recursion schemes as well monadic versions of some morphisms.";
        buildType = "Simple";
      };
      components = {
        recursion-schemes-ext = {
          depends  = [
            hsPkgs.base
            hsPkgs.recursion-schemes
            hsPkgs.lens
            hsPkgs.composition-prelude
          ];
        };
        tests = {
          recursion-schemes-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.recursion-schemes-ext
              hsPkgs.recursion-schemes
              hsPkgs.deepseq
              hsPkgs.hspec
            ];
          };
        };
        benchmarks = {
          recursion-schemes-bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.recursion-schemes-ext
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.recursion-schemes
            ];
          };
        };
      };
    }