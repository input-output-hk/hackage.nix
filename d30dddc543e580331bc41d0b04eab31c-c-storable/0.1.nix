{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "c-storable";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Evan Laforge <qdunkan@gmail.com>";
        author = "Evan Laforge";
        homepage = "https://github.com/elaforge/c-storable";
        url = "";
        synopsis = "Replacement for Storable class that omits non-C types";
        description = "See README.";
        buildType = "Simple";
      };
      components = {
        c-storable = {
          depends  = [ hsPkgs.base ];
        };
      };
    }