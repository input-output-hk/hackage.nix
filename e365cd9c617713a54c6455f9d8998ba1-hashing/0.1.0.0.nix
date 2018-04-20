{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hashing";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Baojun Wang";
        maintainer = "wangbj@gmail.com";
        author = "Baojun Wang";
        homepage = "https://github.com/wangbj/hashing/blob/master/README.md";
        url = "";
        synopsis = "Initial project template from stack";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        hashing = {
          depends  = [
            hsPkgs.QuickCheck
            hsPkgs.array
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.template-haskell
          ];
        };
        exes = {
          hashing-exe = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.array
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.hashing
              hsPkgs.mtl
              hsPkgs.template-haskell
            ];
          };
        };
        tests = {
          hashing-test = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.array
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.hashing
              hsPkgs.mtl
              hsPkgs.template-haskell
              hsPkgs.cryptonite
            ];
          };
        };
      };
    }