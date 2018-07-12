{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "fastedit";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "mwotton@gmail.com";
        author = "Mark Wotton";
        homepage = "";
        url = "";
        synopsis = "find nearest neighbours by edit-distance";
        description = "Use faroo's deletion algorithm to generate possible\nautocorrections efficiently";
        buildType = "Simple";
      };
      components = {
        "fastedit" = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-prelude
            hsPkgs.unordered-containers
            hsPkgs.containers
            hsPkgs.safe
            hsPkgs.bytestring
            hsPkgs.hashable
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.fastedit
              hsPkgs.base-prelude
              hsPkgs.hspec
              hsPkgs.edit-distance
              hsPkgs.QuickCheck
              hsPkgs.file-embed
              hsPkgs.bytestring
            ];
          };
        };
      };
    }