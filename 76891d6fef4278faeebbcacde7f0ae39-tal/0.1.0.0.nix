{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tal";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "2015 Stephanie Weirich";
        maintainer = "sweirich@cis.upenn.edu";
        author = "Stephanie Weirich";
        homepage = "https://github.com/sweirich/tal";
        url = "";
        synopsis = "An implementation of Typed Assembly Language (Morrisett, Walker, Crary, Glew)";
        description = "\"From System F to Typed-Assembly Language\"";
        buildType = "Simple";
      };
      components = {
        tal = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.pretty
            hsPkgs.transformers
            hsPkgs.unbound
          ];
        };
      };
    }