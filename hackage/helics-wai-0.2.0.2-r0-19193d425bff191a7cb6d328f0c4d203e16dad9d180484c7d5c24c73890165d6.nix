{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { example = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "helics-wai"; version = "0.2.0.2"; };
      license = "MIT";
      copyright = "(c) 2014 Hirotomo Moriwaki";
      maintainer = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
      author = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
      homepage = "https://github.com/philopon/helics";
      url = "";
      synopsis = "New Relic® agent SDK wrapper for wai.";
      description = "New Relic® agent SDK wrapper for wai.\n\nPlease read example: <https://github.com/philopon/helics/blob/master/helics-wai/example.hs>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          (hsPkgs."vault" or ((hsPkgs.pkgs-errors).buildDepError "vault"))
          (hsPkgs."helics" or ((hsPkgs.pkgs-errors).buildDepError "helics"))
          ];
        buildable = true;
        };
      exes = {
        "helics-wai-example" = {
          depends = (pkgs.lib).optionals (flags.example) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
            (hsPkgs."helics-wai" or ((hsPkgs.pkgs-errors).buildDepError "helics-wai"))
            (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
            (hsPkgs."helics" or ((hsPkgs.pkgs-errors).buildDepError "helics"))
            (hsPkgs."vault" or ((hsPkgs.pkgs-errors).buildDepError "vault"))
            (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ];
          buildable = if flags.example then true else false;
          };
        };
      };
    }