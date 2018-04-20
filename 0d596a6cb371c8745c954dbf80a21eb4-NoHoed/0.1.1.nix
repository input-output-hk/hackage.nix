{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "NoHoed";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "All Rights Reserved";
        maintainer = "pepeiborra@gmail.com";
        author = "Jose Iborra";
        homepage = "https://github.com/pepeiborra/NoHoed";
        url = "";
        synopsis = "Placeholder package to preserve debug ability via conditional builds";
        description = "";
        buildType = "Simple";
      };
      components = {
        NoHoed = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
          ];
        };
      };
    }