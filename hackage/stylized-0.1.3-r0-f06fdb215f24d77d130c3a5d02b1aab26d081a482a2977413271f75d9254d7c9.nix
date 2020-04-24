{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "stylized"; version = "0.1.3"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "luca.pwns@gmail.com";
      author = "Luca Molari";
      homepage = "http://patch-tag.com/r/lucid/Stylized";
      url = "";
      synopsis = "Ways to output stylized text on ANSI consoles.";
      description = "Various ways to output stylized text on ANSI consoles.\nUses some of the MaxBolingbroke's System.Console.ANSI\nfunctionalities.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
          ];
        buildable = true;
        };
      };
    }