{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "graphs";
          version = "0.3.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/graphs";
        url = "";
        synopsis = "A simple monadic graph library";
        description = "A simple monadic graph library";
        buildType = "Simple";
      };
      components = {
        graphs = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.data-default
            hsPkgs.transformers
            hsPkgs.containers
            hsPkgs.void
          ];
        };
      };
    }