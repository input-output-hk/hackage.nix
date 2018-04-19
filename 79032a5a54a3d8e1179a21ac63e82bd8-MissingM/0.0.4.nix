{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.14";
        identifier = {
          name = "MissingM";
          version = "0.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "Dylan Just";
        maintainer = "Dylan Just";
        author = "Dylan Just <dylan@techtangents.com>";
        homepage = "";
        url = "";
        synopsis = "findM and other missing 'M's";
        description = "findM and other missing 'M's";
        buildType = "Simple";
      };
      components = {
        MissingM = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          Main = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-hunit
              hsPkgs.transformers
            ];
          };
        };
      };
    }