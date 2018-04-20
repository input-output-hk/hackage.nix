{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      buildtests = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "dataenc";
          version = "0.13.0.5";
        };
        license = "BSD-3-Clause";
        copyright = "Magnus Therning, 2007-2009";
        maintainer = "magnus@therning.org";
        author = "Magnus Therning";
        homepage = "http://www.haskell.org/haskellwiki/Library/Data_encoding";
        url = "";
        synopsis = "Data encoding library";
        description = "Data encoding library currently providing Base16, Base32,\nBase32Hex, Base64, Base64Url, Base85, Python string escaping,\nQuoted-Printable, URL encoding, uuencode, xxencode, and yEncoding.";
        buildType = "Simple";
      };
      components = {
        dataenc = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.containers
          ];
        };
        exes = {
          tests = {
            depends  = pkgs.lib.optionals _flags.buildtests [
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.HUnit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }