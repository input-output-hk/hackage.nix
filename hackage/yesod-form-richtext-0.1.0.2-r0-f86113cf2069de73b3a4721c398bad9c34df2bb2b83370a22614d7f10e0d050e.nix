{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "yesod-form-richtext"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "2017 Arthur S. Fayzrakhmanov";
      maintainer = "heraldhoi@gmail.com";
      author = "Arthur S. Fayzrakhmanov";
      homepage = "http://github.com/geraldus/yesod-form-richtext#readme";
      url = "";
      synopsis = "Various rich-text WYSIWYG editors for Yesod forms.";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
          (hsPkgs."blaze-html" or ((hsPkgs.pkgs-errors).buildDepError "blaze-html"))
          (hsPkgs."shakespeare" or ((hsPkgs.pkgs-errors).buildDepError "shakespeare"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."xss-sanitize" or ((hsPkgs.pkgs-errors).buildDepError "xss-sanitize"))
          (hsPkgs."yesod-core" or ((hsPkgs.pkgs-errors).buildDepError "yesod-core"))
          (hsPkgs."yesod-form" or ((hsPkgs.pkgs-errors).buildDepError "yesod-form"))
          ];
        buildable = true;
        };
      };
    }