{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "Imlib"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "cgibbard@gmail.com";
      author = "Cale Gibbard";
      homepage = "";
      url = "";
      synopsis = "";
      description = "Haskell binding for Imlib 2";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."X11" or ((hsPkgs.pkgs-errors).buildDepError "X11"))
          ];
        libs = [
          (pkgs."Imlib2" or ((hsPkgs.pkgs-errors).sysDepError "Imlib2"))
          ];
        buildable = true;
        };
      };
    }