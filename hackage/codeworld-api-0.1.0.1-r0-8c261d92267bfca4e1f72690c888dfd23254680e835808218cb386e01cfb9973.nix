{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "codeworld-api"; version = "0.1.0.1"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ] ++ (if compiler.isGhcjs && true
          then [
            (hsPkgs."ghcjs-base" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-base"))
            (hsPkgs."ghcjs-dom" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-dom"))
            ]
          else [
            (hsPkgs."blank-canvas" or ((hsPkgs.pkgs-errors).buildDepError "blank-canvas"))
            ]);
        buildable = true;
        };
      };
    }