{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      tests = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "dataenc";
          version = "0.14.0.7";
        };
        license = "BSD-3-Clause";
        copyright = "Magnus Therning, 2007-2012, Gracjan Polak, 2014";
        maintainer = "Gracjan Polak <gracjanpolak@gmail.com>";
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
            depends  = optionals _flags.tests [
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.HUnit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.QuickCheck
              hsPkgs.test-framework-th
            ];
          };
        };
      };
    }