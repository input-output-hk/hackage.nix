{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "Strafunski-Sdf2Haskell";
          version = "1.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "darmanithird@gmail.com";
        author = "Ralf Laemmel, Joost Visser";
        homepage = "";
        url = "";
        synopsis = "Converts SDF to Haskell";
        description = "Generates code for using SDF grammars in Haskell. See <http://www.syntax-definition.org/> for more information about SDF.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "Sdf2Haskell" = {
            depends  = [
              hsPkgs.base
              hsPkgs.ATermLib
              hsPkgs.template-haskell
              hsPkgs.pretty
              hsPkgs.mtl
              hsPkgs.StrategyLib
              hsPkgs.directory
              hsPkgs.process
              hsPkgs.haskell-src
            ];
          };
        };
      };
    }