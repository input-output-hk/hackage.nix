{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hakyll-convert"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alexander Batischev <eual.jp@gmail.com>";
      author = "Eric Kow <eric.kow@gmail.com>, Alexander Batischev <eual.jp@gmail.com>";
      homepage = "http://github.com/Minoru/hakyll-convert";
      url = "";
      synopsis = "Convert from other blog engines to Hakyll.";
      description = "WordPress and Blogger only let one export posts in\na limited number of formats, none of which are supported\nby Hakyll. @hakyll-convert@ is created to bridge this gap,\nproviding a way to turn other platform's datadumps into\na set of files Hakyll understands.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."feed" or ((hsPkgs.pkgs-errors).buildDepError "feed"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."hakyll" or ((hsPkgs.pkgs-errors).buildDepError "hakyll"))
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
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."xml" or ((hsPkgs.pkgs-errors).buildDepError "xml"))
            ];
          buildable = true;
          };
        };
      };
    }