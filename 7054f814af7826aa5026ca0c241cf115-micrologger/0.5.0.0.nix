{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      dev = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "micrologger";
          version = "0.5.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 - 2017 Savanni D'Gerinel";
        maintainer = "savanni@luminescent-dreams.com";
        author = "Savanni D'Gerinel";
        homepage = "https://github.com/savannidgerinel/micrologger#readme";
        url = "";
        synopsis = "A super simple logging module.";
        description = "A super simple logging module that primarily outputs json-formatted messages.";
        buildType = "Simple";
      };
      components = {
        micrologger = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.lens
            hsPkgs.text
            hsPkgs.text-format
            hsPkgs.time
            hsPkgs.transformers
          ];
        };
        tests = {
          micrologger-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.micrologger
              hsPkgs.aeson
              hsPkgs.hspec
              hsPkgs.text
            ];
          };
        };
      };
    }