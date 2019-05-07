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
          (hsPkgs.base)
          (hsPkgs.exceptions)
          (hsPkgs.lens)
          (hsPkgs.machines)
          (hsPkgs.mailgun)
          (hsPkgs.mime-mail)
          (hsPkgs.mtl)
          (hsPkgs.newsletter)
          (hsPkgs.text)
          ];
        };
      };
    }