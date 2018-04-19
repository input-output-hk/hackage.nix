{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "string-convert";
          version = "4.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "tdammers@gmail.com";
        author = "Tobias Dammers";
        homepage = "https://bitbucket.org/tdammers/string-convert";
        url = "";
        synopsis = "Universal string conversions";
        description = "Provide unified conversion functions between any two string-like types.";
        buildType = "Simple";
      };
      components = {
        string-convert = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.utf8-string
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.string-convert
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.utf8-string
            ];
          };
        };
      };
    }