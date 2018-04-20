{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tn";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2014, Peter Harpending.";
        maintainer = "Peter Harpending <pharpend2@gmail.com>";
        author = "Peter Harpending";
        homepage = "";
        url = "";
        synopsis = "A journaling program for Linux";
        description = "Extremely simple CLI-based program for keeping diaries or journals.";
        buildType = "Simple";
      };
      components = {
        exes = {
          tn = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.aeson-pretty
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.time
              hsPkgs.optparse-applicative
            ];
          };
        };
      };
    }