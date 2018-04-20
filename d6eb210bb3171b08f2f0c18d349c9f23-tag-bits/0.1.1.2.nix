{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "tag-bits";
          version = "0.1.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2010 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/tag-bits";
        url = "";
        synopsis = "Provides access to the dynamic pointer tagging bits used by GHC.";
        description = "Provides access to the dynamic pointer tagging bits used by GHC.";
        buildType = "Simple";
      };
      components = {
        tag-bits = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc-prim
          ];
        };
      };
    }