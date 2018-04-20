{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      optimize = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hask";
          version = "0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2008-2014, Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/hask";
        url = "";
        synopsis = "Categories";
        description = "Kind-polymorphic category theory in Haskell";
        buildType = "Simple";
      };
      components = {
        hask = {
          depends  = [
            hsPkgs.base
            hsPkgs.constraints
            hsPkgs.ghc-prim
            hsPkgs.reflection
            hsPkgs.transformers
            hsPkgs.tagged
            hsPkgs.void
          ];
        };
      };
    }