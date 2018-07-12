{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "darkplaces-text";
          version = "0.2";
        };
        license = "GPL-2.0-only";
        copyright = "(c) Slava Bacherikov 2015";
        maintainer = "slava@bacher09.org";
        author = "Slava Bacherikov";
        homepage = "https://github.com/bacher09/darkplaces-text";
        url = "";
        synopsis = "Parser for darkplaces colorful text";
        description = "This package supports parsing and displaying darkplaces colorfull text.\nDarkplaces text may contains special color tags and unicode glyphs\nthat are unique for darkplaces fonts.";
        buildType = "Custom";
      };
      components = {
        "darkplaces-text" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.array
            hsPkgs.text
            hsPkgs.utf8-string
            hsPkgs.vector
            hsPkgs.ansi-terminal
          ];
          build-tools = [
            hsPkgs.buildPackages.alex
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.darkplaces-text
              hsPkgs.QuickCheck
              hsPkgs.hspec
            ];
          };
        };
      };
    }