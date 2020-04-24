{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "vcsgui"; version = "0.2.1.0"; };
      license = "LicenseRef-GPL";
      copyright = "2011 Stephan Fortelny, Harald Jagenteufel";
      maintainer = "stephanfortelny at gmail.com, h.jagenteufel at gmail.com, hamish.k.mackenzie at gmail.com";
      author = "Stephan Fortelny, Harald Jagenteufel, Hamish Mackenzie";
      homepage = "https://github.com/forste/haskellVCSGUI";
      url = "";
      synopsis = "GUI library for source code management systems";
      description = "Provides library functions to expose some commonly needed scm tasks to the user.\nUses GTK+ and GTKBuilder to organize and display windows.\nUses vcswrapper to acces the scm functions.\nCurrently git, SVN and mercurial (hg) are supported.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."vcswrapper" or ((hsPkgs.pkgs-errors).buildDepError "vcswrapper"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."haskell-gi-base" or ((hsPkgs.pkgs-errors).buildDepError "haskell-gi-base"))
          (hsPkgs."gi-gtk" or ((hsPkgs.pkgs-errors).buildDepError "gi-gtk"))
          (hsPkgs."gi-gtk-hs" or ((hsPkgs.pkgs-errors).buildDepError "gi-gtk-hs"))
          ];
        buildable = true;
        };
      exes = {
        "vcsgui" = {
          depends = [
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."vcswrapper" or ((hsPkgs.pkgs-errors).buildDepError "vcswrapper"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."haskell-gi-base" or ((hsPkgs.pkgs-errors).buildDepError "haskell-gi-base"))
            (hsPkgs."gi-gtk" or ((hsPkgs.pkgs-errors).buildDepError "gi-gtk"))
            (hsPkgs."gi-gtk-hs" or ((hsPkgs.pkgs-errors).buildDepError "gi-gtk-hs"))
            ];
          buildable = true;
          };
        "vcsgui-askpass" = {
          depends = [
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."vcswrapper" or ((hsPkgs.pkgs-errors).buildDepError "vcswrapper"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."haskell-gi-base" or ((hsPkgs.pkgs-errors).buildDepError "haskell-gi-base"))
            (hsPkgs."gi-gtk" or ((hsPkgs.pkgs-errors).buildDepError "gi-gtk"))
            (hsPkgs."gi-gtk-hs" or ((hsPkgs.pkgs-errors).buildDepError "gi-gtk-hs"))
            ];
          buildable = true;
          };
        };
      };
    }