{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hsay"; version = "1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "Alexander Berntsen 2014";
      maintainer = "alexander@plaimi.net";
      author = "Alexander Berntsen";
      homepage = "";
      url = "";
      synopsis = "(ab)Use Google Translate as a speech synthesiser";
      description = "(ab)Use Google Translate as a speech synthesiser.\nDownloads mp3s from Google Translate with whatever\nyou wanted synthesised, and plays them with mpg123.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hsay" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            ];
          buildable = true;
          };
        };
      };
    }