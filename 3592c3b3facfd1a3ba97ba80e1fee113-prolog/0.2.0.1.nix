{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "prolog";
          version = "0.2.0.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "none";
        author = "Matthias Bartsch";
        homepage = "https://github.com/Erdwolf/prolog";
        url = "";
        synopsis = "A Prolog interpreter written in Haskell.";
        description = "A Prolog interpreter written in Haskell.";
        buildType = "Simple";
      };
      components = {
        prolog = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.syb
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.template-haskell
            hsPkgs.th-lift
            hsPkgs.transformers
          ];
        };
      };
    }