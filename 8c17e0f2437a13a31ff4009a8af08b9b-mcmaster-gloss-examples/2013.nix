{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "mcmaster-gloss-examples";
          version = "2013";
        };
        license = "MIT";
        copyright = "";
        maintainer = "toporoy@mcmaster.ca, anandc@mcmaster.ca";
        author = "";
        homepage = "http://www.cas.mcmaster.ca/~anand/";
        url = "";
        synopsis = "";
        description = "A collection of simple gloss examples written by first year students at McMaster University.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "moving-star" = {
            depends  = [
              hsPkgs.base
              hsPkgs.gloss
            ];
          };
          "haunted-house" = {
            depends  = [
              hsPkgs.base
              hsPkgs.gloss
            ];
          };
          "solar-system" = {
            depends  = [
              hsPkgs.base
              hsPkgs.gloss
            ];
          };
          "parabolic" = {
            depends  = [
              hsPkgs.base
              hsPkgs.gloss
            ];
          };
          "stare" = {
            depends  = [
              hsPkgs.base
              hsPkgs.gloss
            ];
          };
          "waves" = {
            depends  = [
              hsPkgs.base
              hsPkgs.gloss
            ];
          };
          "windmills" = {
            depends  = [
              hsPkgs.base
              hsPkgs.gloss
            ];
          };
        };
      };
    }