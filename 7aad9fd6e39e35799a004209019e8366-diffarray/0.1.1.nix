{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "diffarray";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "libraries@haskell.org";
        author = "";
        homepage = "";
        url = "";
        synopsis = "DiffArray";
        description = "This package defines the DiffArray type.";
        buildType = "Simple";
      };
      components = {
        diffarray = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
          ];
        };
      };
    }