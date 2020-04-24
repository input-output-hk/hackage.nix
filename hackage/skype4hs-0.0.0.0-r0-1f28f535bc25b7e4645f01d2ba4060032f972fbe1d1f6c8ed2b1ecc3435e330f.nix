{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { x11 = false; carbon = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "skype4hs"; version = "0.0.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "emonkak@gmail.com";
      author = "Shota Nozaki";
      homepage = "https://github.com/emonkak/haskell-skype";
      url = "";
      synopsis = "Skype Desktop API binding for Haskell";
      description = "Skype Desktop API binding for Haskell";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."lifted-base" or ((hsPkgs.pkgs-errors).buildDepError "lifted-base"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          (hsPkgs."transformers-base" or ((hsPkgs.pkgs-errors).buildDepError "transformers-base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."word8" or ((hsPkgs.pkgs-errors).buildDepError "word8"))
          ] ++ (pkgs.lib).optional (system.isLinux || system.isFreebsd || flags.x11) (hsPkgs."X11" or ((hsPkgs.pkgs-errors).buildDepError "X11"));
        frameworks = (pkgs.lib).optional (system.isOsx || flags.carbon) (pkgs."Carbon" or ((hsPkgs.pkgs-errors).sysDepError "Carbon"));
        buildable = true;
        };
      };
    }