{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "avwx"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2016, Hans-Christian Esperer";
      maintainer = "Hans-Christian Esperer <hc@hcesperer.org>";
      author = "Hans-Christian Esperer <hc@hcesperer.org>";
      homepage = "https://github.com/hce/avwx";
      url = "";
      synopsis = "Parse METAR weather reports";
      description = "Parse METAR weather reports";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "metar" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."avwx" or ((hsPkgs.pkgs-errors).buildDepError "avwx"))
            (hsPkgs."pretty-show" or ((hsPkgs.pkgs-errors).buildDepError "pretty-show"))
            ];
          buildable = true;
          };
        };
      tests = {
        "avwx-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."avwx" or ((hsPkgs.pkgs-errors).buildDepError "avwx"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }