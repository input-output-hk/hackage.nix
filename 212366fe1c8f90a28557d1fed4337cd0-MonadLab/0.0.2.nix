{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "MonadLab";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Adam Procter <amp269@mizzou.edu>";
        author = "Pericles Kariotis";
        homepage = "http://monadgarden.cs.missouri.edu/MonadLab";
        url = "";
        synopsis = "Automatically generate layered monads";
        description = "";
        buildType = "Simple";
      };
      components = {
        MonadLab = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.template-haskell
          ];
        };
        exes = {
          mlab = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell98
              hsPkgs.process
            ];
          };
        };
      };
    }