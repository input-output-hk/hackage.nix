{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "codeworld-api"; version = "0.3.1"; };
      license = "LicenseRef-Apache";
      copyright = "(c) 2019, The CodeWorld Authors";
      maintainer = "Chris Smith <cdsmith@gmail.com>";
      author = "The CodeWorld Authors";
      homepage = "";
      url = "";
      synopsis = "Graphics library for CodeWorld";
      description = "This module provides the drawing code for CodeWorld.  It is heavily inspired by\nGloss, but modified for consistency and pedagogical reasons.\n\nIt comes with two backends. When compiled with GHCJS, it uses the JavaScript FFI to\nrun on <http://code.world/>.  When compiled with GHC, it uses the blank-canvas\npackage to provide a webpage consisting of just a panel locally. This way, the same\nprogram that runs on the CodeWorld server can also be run locally.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."random-shuffle" or ((hsPkgs.pkgs-errors).buildDepError "random-shuffle"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."cereal-text" or ((hsPkgs.pkgs-errors).buildDepError "cereal-text"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          ] ++ (if compiler.isGhcjs && true
          then [
            (hsPkgs."ghcjs-base" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-base"))
            (hsPkgs."ghcjs-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-prim"))
            (hsPkgs."codeworld-game-api" or ((hsPkgs.pkgs-errors).buildDepError "codeworld-game-api"))
            (hsPkgs."codeworld-prediction" or ((hsPkgs.pkgs-errors).buildDepError "codeworld-prediction"))
            (hsPkgs."ghcjs-dom" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-dom"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ]
          else [
            (hsPkgs."blank-canvas" or ((hsPkgs.pkgs-errors).buildDepError "blank-canvas"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            ]);
        buildable = true;
        };
      };
    }