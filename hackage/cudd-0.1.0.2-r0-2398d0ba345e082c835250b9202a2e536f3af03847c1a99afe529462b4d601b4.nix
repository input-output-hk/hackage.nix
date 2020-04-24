{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "cudd"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2014 Adam Walker";
      maintainer = "adamwalker10@gmail.com";
      author = "Adam Walker";
      homepage = "https://github.com/adamwalker/haskell_cudd";
      url = "";
      synopsis = "Bindings to the CUDD binary decision diagrams library";
      description = "Bindings to version 2.5.0 of the CUDD binary decision diagrams library.\n\n<http://vlsi.colorado.edu/~fabio/CUDD/>\n\n/Installation/\n\nEither install CUDD using your system's package manager or download and build CUDD from here: <https://github.com/adamwalker/cudd>. This is a mirror of the CUDD source that has been modified to build shared object files.\n\nIf you chose the latter option you need to tell cabal where to find cudd:\n\n\"cabal install cudd --extra-include-dirs=\\/path\\/to\\/cudd\\/src\\/include --extra-lib-dirs=\\/path\\/to\\/cudd\\/src\\/libso\"\n\nand you need to tell your program where to find the shared libraries:\n\n\"LD_LIBRARY_PATH=\\/path\\/to\\/cudd\\/src\\/libso ghci\"\n\n/Usage/\n\nThis package provides two interfaces to the CUDD library:\n\n* A purely functional one in \"Cudd.Cudd\" that automatically dereferences BDDs during garbage collection.\n\n* An ST Monad based one in \"Cudd.Imperative\" that gives you precise control over the ordering of BDD operations and when BDDs are dereferenced. Use this one if you want your code to perform well.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        libs = [
          (pkgs."cudd" or ((hsPkgs.pkgs-errors).sysDepError "cudd"))
          (pkgs."mtr" or ((hsPkgs.pkgs-errors).sysDepError "mtr"))
          (pkgs."st" or ((hsPkgs.pkgs-errors).sysDepError "st"))
          (pkgs."util" or ((hsPkgs.pkgs-errors).sysDepError "util"))
          (pkgs."epd" or ((hsPkgs.pkgs-errors).sysDepError "epd"))
          (pkgs."dddmp" or ((hsPkgs.pkgs-errors).sysDepError "dddmp"))
          (pkgs."m" or ((hsPkgs.pkgs-errors).sysDepError "m"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or ((hsPkgs.pkgs-errors).buildToolDepError "c2hs")))
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      };
    }