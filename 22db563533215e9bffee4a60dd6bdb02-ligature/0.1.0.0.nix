{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "ligature";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "(c) 2013 Josef Svenningsson";
        maintainer = "josef.svenningsson@gmail.com";
        author = "Josef Svenningsson";
        homepage = "";
        url = "";
        synopsis = "Expand ligatures in unicode text";
        description = "Utilities for expanding ligatures in unicode text";
        buildType = "Simple";
      };
      components = {
        ligature = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
          ];
        };
      };
    }