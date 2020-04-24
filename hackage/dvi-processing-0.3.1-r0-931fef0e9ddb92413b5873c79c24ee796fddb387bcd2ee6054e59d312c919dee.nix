{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "dvi-processing"; version = "0.3.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "JeanPhilippeBernardy";
      author = "AaronBlack?";
      homepage = "";
      url = "";
      synopsis = "Read/write DVI and TFM file";
      description = "Read/write DVI and TFM file, including typesetting and other features";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }