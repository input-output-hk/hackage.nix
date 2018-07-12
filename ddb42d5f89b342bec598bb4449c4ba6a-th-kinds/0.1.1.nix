{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "th-kinds";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Louis Wasserman <wasserman.louis@gmail.com>";
        author = "Louis Wasserman";
        homepage = "";
        url = "";
        synopsis = "Automated kind inference in Template Haskell.";
        description = "Given the name of a Haskell type, typeclass, type family, or any of the above, determines its kind.";
        buildType = "Simple";
      };
      components = {
        "th-kinds" = {
          depends  = [
            hsPkgs.template-haskell
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
          ];
        };
      };
    }