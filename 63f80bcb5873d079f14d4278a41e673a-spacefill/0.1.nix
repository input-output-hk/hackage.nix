{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "spacefill";
          version = "0.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "knz@thaumogen.net";
        author = "Raphael 'kena' Poss";
        homepage = "https://github.com/knz/spacefill";
        url = "";
        synopsis = "Generators for space-filling curves.";
        description = "Generators of Hilbert and Moore space-filling curves in configurable\ncoordinate domains.";
        buildType = "Simple";
      };
      components = {
        spacefill = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          doc-tests = {
            depends  = [ hsPkgs.base ];
          };
        };
      };
    }