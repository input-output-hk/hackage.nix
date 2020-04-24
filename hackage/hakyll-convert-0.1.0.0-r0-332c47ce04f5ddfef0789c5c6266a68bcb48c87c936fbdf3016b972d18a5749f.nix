{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hakyll-convert"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Eric Kow <eric.kow@gmail.com>";
      author = "Eric Kow <eric.kow@gmail.com>";
      homepage = "http://github.com/kowey/hakyll-convert";
      url = "";
      synopsis = "Convert from other blog engines to Hakyll.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."feed" or ((hsPkgs.pkgs-errors).buildDepError "feed"))
          (hsPkgs."hakyll" or ((hsPkgs.pkgs-errors).buildDepError "hakyll"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."xml" or ((hsPkgs.pkgs-errors).buildDepError "xml"))
          ];
        buildable = true;
        };
      exes = {
        "hakyll-convert" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."feed" or ((hsPkgs.pkgs-errors).buildDepError "feed"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."hakyll-convert" or ((hsPkgs.pkgs-errors).buildDepError "hakyll-convert"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."xml" or ((hsPkgs.pkgs-errors).buildDepError "xml"))
            ];
          buildable = true;
          };
        "hakyll-convert-demo" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hakyll" or ((hsPkgs.pkgs-errors).buildDepError "hakyll"))
            (hsPkgs."hakyll-convert" or ((hsPkgs.pkgs-errors).buildDepError "hakyll-convert"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            ];
          buildable = true;
          };
        };
      };
    }