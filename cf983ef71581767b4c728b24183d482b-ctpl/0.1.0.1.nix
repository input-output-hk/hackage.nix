{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ctpl";
          version = "0.1.0.1";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "m@doomanddarkness.eu";
        author = "Marvin Cohrs";
        homepage = "";
        url = "";
        synopsis = "A programming language for text modification.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "ctpl" = {
          depends  = [
            hsPkgs.base
            hsPkgs.chatty-text
            hsPkgs.chatty-utils
          ];
        };
      };
    }