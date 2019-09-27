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
    flags = { debug = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "clutterhs"; version = "0.1"; };
      license = "LicenseRef-LGPL";
      copyright = "(c) 2009 Matthew Arsenault";
      maintainer = "arsenm2@rpi.edu";
      author = "Matthew Arsenault";
      homepage = "";
      url = "";
      synopsis = "Bindings to the Clutter animation library";
      description = "Clutterhs is a binding to the Clutter C library. Clutter\nis an open source software library for creating fast,\nvisually rich, portable and animated graphical user\ninterfaces. Clutter uses OpenGL for rendering but with\nan API which hides the underlying GL complexity from the\ndeveloper. The Clutter API is intended to be easy to use,\nefficient and flexible.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."haskell98" or (buildDepError "haskell98"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."cairo" or (buildDepError "cairo"))
          (hsPkgs."X11" or (buildDepError "X11"))
          (hsPkgs."glib" or (buildDepError "glib"))
          (hsPkgs."gtk" or (buildDepError "gtk"))
          (hsPkgs."array" or (buildDepError "array"))
          ];
        pkgconfig = [
          (pkgconfPkgs."glib-2.0" or (pkgConfDepError "glib-2.0"))
          (pkgconfPkgs."gobject-2.0" or (pkgConfDepError "gobject-2.0"))
          (pkgconfPkgs."clutter-1.0" or (pkgConfDepError "clutter-1.0"))
          (pkgconfPkgs."pango" or (pkgConfDepError "pango"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      };
    }