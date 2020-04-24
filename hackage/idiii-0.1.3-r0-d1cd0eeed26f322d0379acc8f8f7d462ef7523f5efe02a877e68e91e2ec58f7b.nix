{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "idiii"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "christopher.t.wagner@gmail.com, alekhin.alexey@gmail.com";
      author = "Alexey Alekhin, Chris Wagner";
      homepage = "";
      url = "";
      synopsis = "ID3v2 (tagging standard for MP3 files) library";
      description = "ID3v2 (tagging standard for MP3 files) library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."polyparse" or ((hsPkgs.pkgs-errors).buildDepError "polyparse"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."data-accessor" or ((hsPkgs.pkgs-errors).buildDepError "data-accessor"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
          ];
        buildable = true;
        };
      exes = {
        "read-idiii" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      };
    }