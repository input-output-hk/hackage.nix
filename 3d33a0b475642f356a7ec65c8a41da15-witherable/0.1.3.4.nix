{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "witherable";
          version = "0.1.3.4";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2014 Fumiaki Kinoshita";
        maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
        author = "Fumiaki Kinoshita";
        homepage = "https://github.com/fumieval/witherable";
        url = "";
        synopsis = "filterable traversable";
        description = "A stronger variant of `traverse` which can remove elements and generalised mapMaybe, catMaybes, filter";
        buildType = "Simple";
      };
      components = {
        witherable = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-orphans
            hsPkgs.containers
            hsPkgs.hashable
            hsPkgs.transformers
            hsPkgs.unordered-containers
            hsPkgs.vector
          ];
        };
      };
    }