{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "type-operators";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(C) 2016 Benedict Aas";
        maintainer = "x@shou.io";
        author = "Benedict Aas";
        homepage = "https://github.com/Shou/type-operators#readme";
        url = "";
        synopsis = "Various type-level operators";
        description = "A set of type-level operators meant to be helpful and make typing less of a\nchore.";
        buildType = "Simple";
      };
      components = {
        "type-operators" = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
          ];
        };
      };
    }