{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { sound = true; pdflaby = false; ftgl = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "topkata"; version = "0.2.4"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Christoph Bauer <ich@christoph-bauer.net>";
      author = "Christoph Bauer";
      homepage = "http://home.arcor.de/chr_bauer/topkata.html";
      url = "";
      synopsis = "OpenGL Arcade Game";
      description = "Guide a jumping ball through a maze.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "topkata" = {
          depends = ([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."GLFW-b" or ((hsPkgs.pkgs-errors).buildDepError "GLFW-b"))
            (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."parseargs" or ((hsPkgs.pkgs-errors).buildDepError "parseargs"))
            ] ++ (pkgs.lib).optionals (flags.sound) [
            (hsPkgs."OpenAL" or ((hsPkgs.pkgs-errors).buildDepError "OpenAL"))
            (hsPkgs."ALUT" or ((hsPkgs.pkgs-errors).buildDepError "ALUT"))
            ]) ++ (pkgs.lib).optional (flags.ftgl) (hsPkgs."FTGL" or ((hsPkgs.pkgs-errors).buildDepError "FTGL"));
          buildable = true;
          };
        "pdflaby" = {
          depends = (pkgs.lib).optionals (flags.pdflaby) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."cairo" or ((hsPkgs.pkgs-errors).buildDepError "cairo"))
            ];
          buildable = if flags.pdflaby then true else false;
          };
        };
      };
    }