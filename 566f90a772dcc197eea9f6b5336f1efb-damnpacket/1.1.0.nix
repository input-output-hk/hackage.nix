{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "damnpacket";
          version = "1.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "me@jude.bio";
        author = "Jude Taylor";
        homepage = "";
        url = "";
        synopsis = "Parsing dAmn messages";
        description = "This module provides a datatype and convenience functions for parsing, manipulating, and rendering deviantART Message Network messages.";
        buildType = "Simple";
      };
      components = {
        damnpacket = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.fail
            hsPkgs.html-entities
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.th-lift-instances
          ];
        };
        tests = {
          parse = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.damnpacket
              hsPkgs.HUnit
              hsPkgs.hspec
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }