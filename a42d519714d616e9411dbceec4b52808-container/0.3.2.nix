{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "container";
          version = "0.3.2";
        };
        license = "Apache-2.0";
        copyright = "Copyright (C) 2018 Luna Team";
        maintainer = "Wojciech Danilo <wojciech.danilo@luna-lang.org>";
        author = "Luna Team";
        homepage = "https://github.com/luna/container";
        url = "";
        synopsis = "Containers abstraction and utilities.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "container" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.convert
            hsPkgs.lens
            hsPkgs.text
          ];
        };
      };
    }