{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "cr";
          version = "1.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "scvalex@gmail.com";
        author = "Alexandru Scvortov <scvalex@gmail.com>";
        homepage = "https://github.com/scvalex/cr";
        url = "";
        synopsis = "Code review tool";
        description = "See the @README.md@ file and the homepage for details.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "cr" = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.shelly
              hsPkgs.text
              hsPkgs.process
              hsPkgs.transformers
            ];
          };
        };
      };
    }