{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "monad-open";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "jon@jonmsterling.com";
        author = "Jonathan Sterling";
        homepage = "";
        url = "";
        synopsis = "Open recursion for when you need it";
        description = "Introduces a monad transformer and MTL-style class for open recursion.";
        buildType = "Simple";
      };
      components = {
        "monad-open" = {
          depends  = [
            hsPkgs.base
            hsPkgs.exceptions
            hsPkgs.mtl
            hsPkgs.transformers
          ];
        };
      };
    }