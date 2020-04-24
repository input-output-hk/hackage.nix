{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "gps2htmlReport"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Rob Stewart <robstewart57@googlemail.com>";
      author = "Rob Stewart <robstewart57@googlemail.com>";
      homepage = "https://github.com/robstewart57/Gps2HtmlReport";
      url = "";
      synopsis = "GPS to HTML Summary Report";
      description = "Generate a HTML summary report of GPS tracks";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."html" or ((hsPkgs.pkgs-errors).buildDepError "html"))
          (hsPkgs."gps" or ((hsPkgs.pkgs-errors).buildDepError "gps"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."cairo" or ((hsPkgs.pkgs-errors).buildDepError "cairo"))
          (hsPkgs."Chart" or ((hsPkgs.pkgs-errors).buildDepError "Chart"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."data-accessor" or ((hsPkgs.pkgs-errors).buildDepError "data-accessor"))
          (hsPkgs."colour" or ((hsPkgs.pkgs-errors).buildDepError "colour"))
          (hsPkgs."xsd" or ((hsPkgs.pkgs-errors).buildDepError "xsd"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."gd" or ((hsPkgs.pkgs-errors).buildDepError "gd"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."download-curl" or ((hsPkgs.pkgs-errors).buildDepError "download-curl"))
          (hsPkgs."hsmagick" or ((hsPkgs.pkgs-errors).buildDepError "hsmagick"))
          (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
          ];
        buildable = true;
        };
      exes = { "gps2htmlReport" = { buildable = true; }; };
      };
    }