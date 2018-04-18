{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "composition";
          version = "1.0.0.1";
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
        composition = {};
      };
    }