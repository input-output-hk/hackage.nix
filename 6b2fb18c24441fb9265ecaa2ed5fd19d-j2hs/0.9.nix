{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "j2hs";
          version = "0.9";
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
              hsPkgs.hinduce-missingh
              hsPkgs.java-bridge
              hsPkgs.java-bridge-extras
              hsPkgs.java-reflect
              hsPkgs.haskell-reflect
              hsPkgs.split
              hsPkgs.named-records
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.containers
              hsPkgs.bimap
              hsPkgs.multimap
              hsPkgs.syb
              hsPkgs.strings
              hsPkgs.mtl
              hsPkgs.transformers
            ];
          };
        };
      };
    }