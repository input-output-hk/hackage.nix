{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hourglass-orphans";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Sibi";
        maintainer = "sibi@psibi.in";
        author = "Sibi Prabakaran";
        homepage = "https://github.com/psibi/hourglass-orphans#readme";
        url = "";
        synopsis = "Orphan Aeson instances to hourglass";
        description = "Orphan Aeson instances to hourglass";
        buildType = "Simple";
      };
      components = {
        "hourglass-orphans" = {
          depends  = [
            hsPkgs.base
            hsPkgs.hourglass
            hsPkgs.aeson
          ];
        };
        tests = {
          "hourglass-orphans-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hourglass-orphans
              hsPkgs.hspec
              hsPkgs.aeson
              hsPkgs.hspec-expectations
              hsPkgs.hourglass
              hsPkgs.text
            ];
          };
        };
      };
    }