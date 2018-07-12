{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "unfoldable";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "sjoerd@w3future.com";
        author = "Sjoerd Visscher";
        homepage = "https://github.com/sjoerdvisscher/unfoldable";
        url = "";
        synopsis = "Class of data structures that can be unfolded from a seed value.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "unfoldable" = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.random
          ];
        };
      };
    }