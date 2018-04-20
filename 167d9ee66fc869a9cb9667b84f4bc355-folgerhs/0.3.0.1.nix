{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "folgerhs";
          version = "0.3.0.1";
        };
        license = "GPL-3.0-only";
        copyright = "2017 Uma Zalakain";
        maintainer = "uma@gisa-elkartea.org";
        author = "Uma Zalakain";
        homepage = "https://github.com/SU-LOSP/folgerhs#readme";
        url = "";
        synopsis = "Toolset for Folger Shakespeare Library's XML annotated plays";
        description = "Toolset for Folger Shakespeare Library's XML annotated plays";
        buildType = "Simple";
      };
      components = {
        folgerhs = {
          depends  = [
            hsPkgs.base
            hsPkgs.xml
            hsPkgs.containers
            hsPkgs.array
            hsPkgs.gloss
          ];
        };
        exes = {
          folgerhs = {
            depends  = [
              hsPkgs.base
              hsPkgs.folgerhs
              hsPkgs.xml
              hsPkgs.containers
              hsPkgs.array
              hsPkgs.gloss
              hsPkgs.optparse-applicative
            ];
          };
        };
      };
    }