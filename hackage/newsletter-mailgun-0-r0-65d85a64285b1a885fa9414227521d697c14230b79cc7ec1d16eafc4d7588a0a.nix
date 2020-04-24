{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "newsletter-mailgun"; version = "0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2019 davean";
      maintainer = "oss@xkcd.com";
      author = "davean";
      homepage = "https://oss.xkcd.com/";
      url = "";
      synopsis = "A mailgun backend for the newsletter package.";
      description = "This package provides a backed to based on\n<mailgun https://hackage.haskell.org/package/mailgun> for\n<newsletter https://hackage.haskell.org/package/newsletter>.\n\nSubscription storage in addition to mailing is deligated to\n<mailgun.com https://www.mailgun.com/>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."machines" or ((hsPkgs.pkgs-errors).buildDepError "machines"))
          (hsPkgs."mailgun" or ((hsPkgs.pkgs-errors).buildDepError "mailgun"))
          (hsPkgs."mime-mail" or ((hsPkgs.pkgs-errors).buildDepError "mime-mail"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."newsletter" or ((hsPkgs.pkgs-errors).buildDepError "newsletter"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }