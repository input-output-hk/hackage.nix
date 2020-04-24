{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "lambdacms-media"; version = "0.0.2"; };
      license = "MIT";
      copyright = "(c) 2014 Hoppinger";
      maintainer = "mats@AT-hoppinger.com";
      author = "Mats Rietdijk, Cies Breijs";
      homepage = "http://lambdacms.org/media";
      url = "";
      synopsis = "Media CMS extension for Yesod apps";
      description = "LambdaCms is a Content Management System (CMS) in Haskell\nusing Yesod. This package contains the \"media\" extension.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."yesod" or ((hsPkgs.pkgs-errors).buildDepError "yesod"))
          (hsPkgs."yesod-form" or ((hsPkgs.pkgs-errors).buildDepError "yesod-form"))
          (hsPkgs."lambdacms-core" or ((hsPkgs.pkgs-errors).buildDepError "lambdacms-core"))
          (hsPkgs."persistent" or ((hsPkgs.pkgs-errors).buildDepError "persistent"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."shakespeare" or ((hsPkgs.pkgs-errors).buildDepError "shakespeare"))
          ];
        buildable = true;
        };
      };
    }