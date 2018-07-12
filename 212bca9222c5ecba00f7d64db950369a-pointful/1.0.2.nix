{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      separatesyb = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "pointful";
          version = "1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Mikhail Glushenkov <the.dead.shall.rise@gmail.com>";
        author = "Mikhail Glushenkov";
        homepage = "http://github.com/23Skidoo/pointful";
        url = "";
        synopsis = "Pointful refactoring tool";
        description = "Stand-alone command-line version of the pointful plugin\nfor lambdabot.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "pointful" = {
            depends  = [
              hsPkgs.containers
              hsPkgs.haskell-src
              hsPkgs.mtl
            ] ++ (if _flags.separatesyb
              then [ hsPkgs.base hsPkgs.syb ]
              else [ hsPkgs.base ]);
          };
        };
      };
    }