{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "positron";
          version = "0.1.0.0";
        };
        license = "Apache-2.0";
        copyright = "2016 XT";
        maintainer = "e@xtendo.org";
        author = "XT";
        homepage = "https://github.com/xtendo-org/positron#readme";
        url = "";
        synopsis = "Experiment";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        positron = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.postgresql-libpq
            hsPkgs.scientific
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.base
          ];
        };
        tests = {
          positron-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.positron
            ];
          };
        };
      };
    }