{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ngrams-loader"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "Copyright (C) 2014 Yorick Laupa";
      maintainer = "Yorick Laupa <yo.eight@gmail.com>";
      author = "Yorick Laupa";
      homepage = "http://github.com/YoEight/ngrams-loader";
      url = "";
      synopsis = "Ngrams loader based on http://www.ngrams.info format";
      description = "Ngrams loader based on http://www.ngrams.info format";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."machines" or ((hsPkgs.pkgs-errors).buildDepError "machines"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
          (hsPkgs."sqlite-simple" or ((hsPkgs.pkgs-errors).buildDepError "sqlite-simple"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "ngrams-loader" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ngrams-loader" or ((hsPkgs.pkgs-errors).buildDepError "ngrams-loader"))
            (hsPkgs."parseargs" or ((hsPkgs.pkgs-errors).buildDepError "parseargs"))
            ];
          buildable = true;
          };
        };
      };
    }