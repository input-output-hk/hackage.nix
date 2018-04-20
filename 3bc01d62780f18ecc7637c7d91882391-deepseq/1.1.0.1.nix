{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "deepseq";
          version = "1.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "libraries@haskell.org";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Fully evaluate data structures";
        description = "This package provides a \\\"deep\\\" version of seq, for fully evluating\ndata structures.";
        buildType = "Simple";
      };
      components = {
        deepseq = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.array
          ];
        };
      };
    }