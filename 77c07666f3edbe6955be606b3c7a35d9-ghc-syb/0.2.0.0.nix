{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "ghc-syb";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Claus Reinke 2008";
        maintainer = "Thomas Schilling <nominolo@googlemail.com>";
        author = "Claus Reinke";
        homepage = "http://github.com/nominolo/ghc-syb";
        url = "";
        synopsis = "Data and Typeable instances for the GHC API.";
        description = "Data and Typeable instances for the GHC API.";
        buildType = "Simple";
      };
      components = {
        ghc-syb = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc
          ];
        };
      };
    }