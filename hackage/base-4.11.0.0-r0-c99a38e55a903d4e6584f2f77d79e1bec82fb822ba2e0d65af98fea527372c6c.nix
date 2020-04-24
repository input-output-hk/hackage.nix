{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { integer-simple = false; integer-gmp = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "base"; version = "4.11.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "libraries@haskell.org";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Basic libraries";
      description = "This package contains the \"Prelude\" and its support libraries,\nand a large collection of useful libraries ranging from data\nstructures to parsing combinators and debugging utilities.";
      buildType = "Configure";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."rts" or ((hsPkgs.pkgs-errors).buildDepError "rts"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          ] ++ (pkgs.lib).optional (!(flags.integer-gmp && !flags.integer-simple || !flags.integer-gmp && flags.integer-simple)) (hsPkgs."invalid-cabal-flag-settings" or ((hsPkgs.pkgs-errors).buildDepError "invalid-cabal-flag-settings"))) ++ (pkgs.lib).optional (flags.integer-simple) (hsPkgs."integer-simple" or ((hsPkgs.pkgs-errors).buildDepError "integer-simple"))) ++ (pkgs.lib).optional (flags.integer-gmp) (hsPkgs."integer-gmp" or ((hsPkgs.pkgs-errors).buildDepError "integer-gmp"));
        libs = (pkgs.lib).optionals (system.isWindows) [
          (pkgs."wsock32" or ((hsPkgs.pkgs-errors).sysDepError "wsock32"))
          (pkgs."user32" or ((hsPkgs.pkgs-errors).sysDepError "user32"))
          (pkgs."shell32" or ((hsPkgs.pkgs-errors).sysDepError "shell32"))
          (pkgs."msvcrt" or ((hsPkgs.pkgs-errors).sysDepError "msvcrt"))
          (pkgs."mingw32" or ((hsPkgs.pkgs-errors).sysDepError "mingw32"))
          (pkgs."mingwex" or ((hsPkgs.pkgs-errors).sysDepError "mingwex"))
          ];
        buildable = true;
        };
      };
    }