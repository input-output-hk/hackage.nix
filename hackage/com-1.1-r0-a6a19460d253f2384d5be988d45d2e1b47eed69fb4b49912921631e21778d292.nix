{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "com"; version = "1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sigbjorn Finne <sigbjorn.finne@gmail.com>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Haskell COM support library";
      description = "COM + Automation libraries for Haskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
          (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
          ];
        libs = [
          (pkgs."kernel32" or ((hsPkgs.pkgs-errors).sysDepError "kernel32"))
          (pkgs."user32" or ((hsPkgs.pkgs-errors).sysDepError "user32"))
          (pkgs."ole32" or ((hsPkgs.pkgs-errors).sysDepError "ole32"))
          (pkgs."oleaut32" or ((hsPkgs.pkgs-errors).sysDepError "oleaut32"))
          (pkgs."advapi32" or ((hsPkgs.pkgs-errors).sysDepError "advapi32"))
          ];
        buildable = true;
        };
      };
    }