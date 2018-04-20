{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "getflag";
          version = "1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "athas@sigkill.dk";
        author = "Troels Henriksen";
        homepage = "";
        url = "";
        synopsis = "Command-line parser.";
        description = "This package implements parsing of Plan 9-style command line flags.";
        buildType = "Simple";
      };
      components = {
        getflag = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
          ];
        };
      };
    }