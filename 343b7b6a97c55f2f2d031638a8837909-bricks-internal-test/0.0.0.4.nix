{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "bricks-internal-test";
          version = "0.0.0.4";
        };
        license = "Apache-2.0";
        copyright = "";
        maintainer = "Chris Martin <ch.martin@gmail.com>";
        author = "Chris Martin <ch.martin@gmail.com>";
        homepage = "https://github.com/chris-martin/bricks#readme";
        url = "";
        synopsis = "...";
        description = "...";
        buildType = "Simple";
      };
      components = {
        "bricks-internal-test" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bricks-internal
            hsPkgs.containers
            hsPkgs.hedgehog
            hsPkgs.template-haskell
            hsPkgs.text
          ];
        };
      };
    }