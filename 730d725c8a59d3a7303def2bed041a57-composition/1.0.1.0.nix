{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "composition";
          version = "1.0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "danburton.email@gmail.com";
        author = "Dan Burton";
        homepage = "http://patch-tag.com/r/DanBurton/composition/home";
        url = "";
        synopsis = "Combinators for unorthodox function composition";
        description = "";
        buildType = "Simple";
      };
      components = {
        "composition" = {};
      };
    }