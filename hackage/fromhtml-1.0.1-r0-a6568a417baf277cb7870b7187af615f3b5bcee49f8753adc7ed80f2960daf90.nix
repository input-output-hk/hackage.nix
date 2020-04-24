{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "fromhtml"; version = "1.0.1"; };
      license = "MIT";
      copyright = "2018 Marek Suchánek";
      maintainer = "marek.suchanek@fit.cvut.cz";
      author = "Marek Suchánek";
      homepage = "https://github.com/MarekSuchanek/FromHTML#readme";
      url = "";
      synopsis = "Simple adapter for transformation of HTML to other formats";
      description = "Please see the README on GitHub at <https://github.com/MarekSuchanek/FromHTML#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."process-extras" or ((hsPkgs.pkgs-errors).buildDepError "process-extras"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "fromhtml" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."fromhtml" or ((hsPkgs.pkgs-errors).buildDepError "fromhtml"))
            (hsPkgs."process-extras" or ((hsPkgs.pkgs-errors).buildDepError "process-extras"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }