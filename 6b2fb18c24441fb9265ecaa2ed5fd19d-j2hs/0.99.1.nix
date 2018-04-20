{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "j2hs";
          version = "0.99.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
        author = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
        homepage = "";
        url = "";
        synopsis = "j2hs";
        description = "j2hs";
        buildType = "Custom";
      };
      components = {
        exes = {
          j2hs = {
            depends  = [
              hsPkgs.base
              hsPkgs.hx
              hsPkgs.java-bridge
              hsPkgs.java-bridge-extras
              hsPkgs.java-reflect
              hsPkgs.split
              hsPkgs.named-records
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.containers
              hsPkgs.bimap
              hsPkgs.syb
              hsPkgs.strings
              hsPkgs.mtl
              hsPkgs.transformers
              hsPkgs.strict
            ];
          };
        };
      };
    }