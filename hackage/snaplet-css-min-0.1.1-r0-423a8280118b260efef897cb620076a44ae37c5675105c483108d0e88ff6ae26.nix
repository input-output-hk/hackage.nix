{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "snaplet-css-min"; version = "0.1.1"; };
      license = "MIT";
      copyright = "(c) 2014 Timothy Jones";
      maintainer = "Timothy Jones <git@zmthy.io>";
      author = "Timothy Jones";
      homepage = "https://github.com/zmthy/snaplet-css-min";
      url = "";
      synopsis = "A Snaplet for CSS minification";
      description = "A Snaplet for minifying and caching CSS files.\n\nNest this Snaplet inside your own, and place your CSS files in\n@snaplets/css-min@.\n\nThe minifier just parses and renders the contents of the files with\n@css-text@, so the minification is not complete. It will remove most\nwhitespace, though.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."css-text" or ((hsPkgs.pkgs-errors).buildDepError "css-text"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."snap" or ((hsPkgs.pkgs-errors).buildDepError "snap"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      };
    }