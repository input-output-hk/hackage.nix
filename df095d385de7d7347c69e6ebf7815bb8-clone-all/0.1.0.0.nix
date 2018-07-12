{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "clone-all";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "noonsilk@gmail.com";
        author = "Noon Silk";
        homepage = "https://github.com/silky/clone-all";
        url = "";
        synopsis = "Clone all github repositories from a given user";
        description = "Clone all github repositories from a given user";
        buildType = "Simple";
      };
      components = {
        exes = {
          "clone-all" = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.system-filepath
              hsPkgs.optparse-applicative
              hsPkgs.system-fileio
              hsPkgs.process
              hsPkgs.bytestring
              hsPkgs.aeson
              hsPkgs.github
              hsPkgs.directory
              hsPkgs.transformers
            ];
          };
        };
      };
    }