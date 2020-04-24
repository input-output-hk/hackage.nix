{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = { name = "base"; version = "4.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "libraries@haskell.org";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Basic libraries";
      description = "This package contains the Prelude and its support libraries,\nand a large collection of useful libraries ranging from data\nstructures to parsing combinators and debugging utilities.";
      buildType = "Configure";
      };
    components = {
      "library" = {
        depends = (pkgs.lib).optionals (compiler.isGhc && true) [
          (hsPkgs."rts" or ((hsPkgs.pkgs-errors).buildDepError "rts"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."integer" or ((hsPkgs.pkgs-errors).buildDepError "integer"))
          ];
        libs = (pkgs.lib).optionals (system.isWindows) [
          (pkgs."wsock32" or ((hsPkgs.pkgs-errors).sysDepError "wsock32"))
          (pkgs."msvcrt" or ((hsPkgs.pkgs-errors).sysDepError "msvcrt"))
          (pkgs."kernel32" or ((hsPkgs.pkgs-errors).sysDepError "kernel32"))
          (pkgs."user32" or ((hsPkgs.pkgs-errors).sysDepError "user32"))
          (pkgs."shell32" or ((hsPkgs.pkgs-errors).sysDepError "shell32"))
          ];
        buildable = true;
        };
      };
    }