{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "pvd"; version = "1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010, Rickard Nilsson";
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
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."X11" or ((hsPkgs.pkgs-errors).buildDepError "X11"))
            (hsPkgs."Codec-Image-DevIL" or ((hsPkgs.pkgs-errors).buildDepError "Codec-Image-DevIL"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ];
          libs = [
            (pkgs."IL" or ((hsPkgs.pkgs-errors).sysDepError "IL"))
            (pkgs."pthread" or ((hsPkgs.pkgs-errors).sysDepError "pthread"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
            ];
          buildable = true;
          };
        "pvc" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            ];
          buildable = true;
          };
        };
      };
    }