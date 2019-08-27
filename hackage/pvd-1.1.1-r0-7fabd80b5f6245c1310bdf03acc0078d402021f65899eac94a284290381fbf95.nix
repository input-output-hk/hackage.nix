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
      specVersion = "1.2";
      identifier = { name = "pvd"; version = "1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011, Rickard Nilsson";
      maintainer = "rickard.nilsson@telia.com";
      author = "Rickard Nilsson";
      homepage = "http://code.haskell.org/pvd";
      url = "";
      synopsis = "A photo viewer daemon application with remote controlling abilities.";
      description = "pvd, Photo Viewer Daemon, is an image viewer application that displays a fullscreen X11 window and listens for remote commands over TCP. The project also includes pvc, a simple command line client application you can use to control pvd. pvc has commands for setting the current photo playlist, jumping between photos, etc. pvd implements caching in the background which makes it possible to quickly switch between photos even if the files are fetched over network or if pvd runs on a slow computer. pvd uses the DevIL image library for loading photo files, which supports a large number of image formats.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "pvd" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."X11" or (buildDepError "X11"))
            (hsPkgs."Codec-Image-DevIL" or (buildDepError "Codec-Image-DevIL"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          libs = [
            (pkgs."IL" or (sysDepError "IL"))
            (pkgs."pthread" or (sysDepError "pthread"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (buildToolDepError "hsc2hs")))
            ];
          };
        "pvc" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."stm" or (buildDepError "stm"))
            ];
          };
        };
      };
    }