{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "codeworld-api";
        version = "0.2.1.0";
      };
      license = "LicenseRef-Apache";
      copyright = "(c) 2016, The CodeWorld Authors";
      maintainer = "Chris Smith <cdsmith@gmail.com>";
      author = "The CodeWorld Authors";
      homepage = "";
      url = "";
      synopsis = "Graphics library for CodeWorld";
      description = "This module provides the drawing code for CodeWorld.  It is heavily inspired by\nGloss, but modified for consistency and pedagogical reasons.\n\nIt comes with two backends. When compiled with GHCJS, it uses the JavaScript FFI to\nrun on <http://code.world/>.  When compiled with GHC, it uses the blank-canvas\npackage to provide a webpage consisting of just a panel locally. This way, the same\nprogram that runs on the CodeWorld server can also be run locally.";
      buildType = "Simple";
    };
    components = {
      "codeworld-api" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.hashable)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.time)
          (hsPkgs.random)
          (hsPkgs.cereal)
          (hsPkgs.cereal-text)
        ] ++ (if compiler.isGhcjs && true
          then [
            (hsPkgs.ghcjs-base)
            (hsPkgs.ghcjs-dom)
            (hsPkgs.ghcjs-prim)
            (hsPkgs.codeworld-game-api)
            (hsPkgs.codeworld-prediction)
          ]
          else [ (hsPkgs.blank-canvas) ]);
      };
    };
  }