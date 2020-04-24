{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hakyll-contrib-elm"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Erik Stevenson";
      maintainer = "eriknstevenson@gmail.com";
      author = "Erik Stevenson";
      homepage = "https://github.com/narrative/hakyll-contrib-elm#readme";
      url = "";
      synopsis = "Compile Elm code for inclusion in Hakyll static site.";
      description = "A Hakyll extension which allows building and including Elm\nprojects in static sites.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."hakyll" or ((hsPkgs.pkgs-errors).buildDepError "hakyll"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
          ];
        buildable = true;
        };
      exes = {
        "hakyll-contrib-elm-example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hakyll" or ((hsPkgs.pkgs-errors).buildDepError "hakyll"))
            (hsPkgs."hakyll-contrib-elm" or ((hsPkgs.pkgs-errors).buildDepError "hakyll-contrib-elm"))
            ];
          buildable = true;
          };
        };
      };
    }