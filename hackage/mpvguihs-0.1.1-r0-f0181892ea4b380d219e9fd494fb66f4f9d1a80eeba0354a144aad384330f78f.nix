{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "mpvguihs"; version = "0.1.1"; };
      license = "GPL-3.0-only";
      copyright = "(C) 2013 Sebastián E. Peyrott";
      maintainer = "pseus7+mpvguihs@gmail.com";
      author = "Sebastián E. Peyrott";
      homepage = "https://github.com/sebadoom/mpvguihs";
      url = "";
      synopsis = "A minimalist mpv GUI written in I/O heavy Haskell.";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "mpvguihs" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }