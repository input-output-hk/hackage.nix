{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "impossible";
          version = "1.1.1";
        };
        license = "Apache-2.0";
        copyright = "Copyright (C) 2018 Luna Team";
        maintainer = "Wojciech Danilo <wojciech.danilo@luna-lang.org>";
        author = "Luna Team";
        homepage = "https://github.com/luna/impossible";
        url = "";
        synopsis = "Set of data and type definitions of impossible types. Impossible types are useful when declaring type classes / type families instances that should not be expanded by GHC until a specific type is provided in order to keep the types nice and readable.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "impossible" = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
          ];
        };
      };
    }