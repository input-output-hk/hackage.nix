{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      executable = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "udbus-model";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "Vincent Hanquez <vincent@snarc.org>";
        maintainer = "Vincent Hanquez <vincent@snarc.org>";
        author = "Vincent Hanquez <vincent@snarc.org>";
        homepage = "http://github.com/vincenthz/hs-udbus";
        url = "";
        synopsis = "Model API for udbus introspection and definitions";
        description = "Model API for udbus introspection and definitions";
        buildType = "Simple";
      };
      components = {
        "udbus-model" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.xml
            hsPkgs.udbus
          ];
        };
        exes = {
          "dbus-model-parse" = {
            depends  = pkgs.lib.optionals _flags.executable [
              hsPkgs.base
              hsPkgs.groom
              hsPkgs.udbus
              hsPkgs.udbus-model
            ];
          };
        };
      };
    }