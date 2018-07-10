{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "convert";
          version = "1.5";
        };
        license = "Apache-2.0";
        copyright = "Copyright (C) 2018 Luna Team";
        maintainer = "Wojciech Danilo <wojciech.danilo@luna-lang.org>";
        author = "Luna Team";
        homepage = "https://github.com/luna/convert";
        url = "";
        synopsis = "Safe and unsafe data conversion utilities with strong type-level operation. checking.";
        description = "";
        buildType = "Simple";
      };
      components = {
        convert = {
          depends  = [
            hsPkgs.ansi-wl-pprint
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.impossible
            hsPkgs.lens
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.utf8-string
          ];
        };
      };
    }