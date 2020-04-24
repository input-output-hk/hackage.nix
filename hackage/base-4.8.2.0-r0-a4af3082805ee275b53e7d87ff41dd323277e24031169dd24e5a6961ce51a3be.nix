{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      integer-simple = false;
      integer-gmp = false;
      integer-gmp2 = false;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "base"; version = "4.8.2.0"; };
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
          ] ++ (pkgs.lib).optional (flags.integer-simple) (hsPkgs."integer-simple" or ((hsPkgs.pkgs-errors).buildDepError "integer-simple"))) ++ (pkgs.lib).optional (flags.integer-gmp) (hsPkgs."integer-gmp" or ((hsPkgs.pkgs-errors).buildDepError "integer-gmp"))) ++ (pkgs.lib).optional (flags.integer-gmp2) (hsPkgs."integer-gmp" or ((hsPkgs.pkgs-errors).buildDepError "integer-gmp"));
        libs = (pkgs.lib).optionals (system.isWindows) [
          (pkgs."wsock32" or ((hsPkgs.pkgs-errors).sysDepError "wsock32"))
          (pkgs."user32" or ((hsPkgs.pkgs-errors).sysDepError "user32"))
          (pkgs."shell32" or ((hsPkgs.pkgs-errors).sysDepError "shell32"))
          ];
        buildable = true;
        };
      };
    }