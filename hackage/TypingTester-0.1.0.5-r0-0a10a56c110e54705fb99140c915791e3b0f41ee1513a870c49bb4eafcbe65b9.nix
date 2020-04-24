{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "TypingTester"; version = "0.1.0.5"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "hawk.alan@gmail.com";
      author = "Alan Hawkins";
      homepage = "https://github.com/xpika/typingtester";
      url = "";
      synopsis = "Command Line Typing speed tester";
      description = "Prompts the user to type anything they wish. Notifies them of how long it took.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "typingtester" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }