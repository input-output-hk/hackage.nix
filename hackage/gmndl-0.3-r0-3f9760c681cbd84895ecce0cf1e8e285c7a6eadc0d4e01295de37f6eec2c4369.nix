let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "gmndl"; version = "0.3"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "claudiusmaximus@goto10.org";
      author = "Claude Heiland-Allen";
      homepage = "";
      url = "";
      synopsis = "Mandelbrot Set explorer using GTK";
      description = "A Mandelbrot Set explorer.  Multiple render threads\nuse higher precision maths at higher zoom levels.\nSuggested usage:\n\n@gmndl +RTS -N -qa -RTS --width=640 --height=480@\n\nLeft-click to zoom in, right-click to zoom out.  The\nstatus bar shows where you are, and the entry field\ntakes a space-separated list of fractions strictly\nbetween 0 and 1, try for example:\n\n@1\\/2 2\\/3 1\\/4 3\\/5@";
      buildType = "Simple";
      };
    components = {
      exes = {
        "gmndl" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."gtk" or (buildDepError "gtk"))
            (hsPkgs."gtkglext" or (buildDepError "gtkglext"))
            (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."OpenGL" or (buildDepError "OpenGL"))
            (hsPkgs."priority-queue" or (buildDepError "priority-queue"))
            (hsPkgs."qd" or (buildDepError "qd"))
            ];
          };
        };
      };
    }