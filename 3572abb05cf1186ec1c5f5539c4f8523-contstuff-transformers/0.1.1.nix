{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "contstuff-transformers";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2010 Ertugrul Söylemez";
        maintainer = "Ertugrul Söylemez <es@ertes.de>";
        author = "Ertugrul Söylemez <es@ertes.de>";
        homepage = "";
        url = "";
        synopsis = "Deprecated interface between contstuff 0.7.0 and the transformers package";
        description = "This package is now deprecated.  Use the latest 'contstuff' package.";
        buildType = "Simple";
      };
      components = {
        contstuff-transformers = {
          depends  = [
            hsPkgs.base
            hsPkgs.contstuff
            hsPkgs.transformers
          ];
        };
      };
    }