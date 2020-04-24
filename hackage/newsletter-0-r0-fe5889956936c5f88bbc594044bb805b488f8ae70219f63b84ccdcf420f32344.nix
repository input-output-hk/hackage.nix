{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "newsletter"; version = "0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2019 davean";
      maintainer = "oss@xkcd.com";
      author = "davean";
      homepage = "https://oss.xkcd.com/";
      url = "";
      synopsis = "A basic newsletter implimentation, using various backends.";
      description = "This package impliments a webserver that manages mailing list subscripts and provides\ntools to send to said list. Mail sending services are provided by backends like\n<newsletter-mailgun https://hackage.haskell.org/package/newsletter-mailgun>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."blaze-html" or ((hsPkgs.pkgs-errors).buildDepError "blaze-html"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."clientsession" or ((hsPkgs.pkgs-errors).buildDepError "clientsession"))
          (hsPkgs."email-validate" or ((hsPkgs.pkgs-errors).buildDepError "email-validate"))
          (hsPkgs."http-api-data" or ((hsPkgs.pkgs-errors).buildDepError "http-api-data"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."machines" or ((hsPkgs.pkgs-errors).buildDepError "machines"))
          (hsPkgs."mime-mail" or ((hsPkgs.pkgs-errors).buildDepError "mime-mail"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
          (hsPkgs."psqueues" or ((hsPkgs.pkgs-errors).buildDepError "psqueues"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."servant" or ((hsPkgs.pkgs-errors).buildDepError "servant"))
          (hsPkgs."servant-blaze" or ((hsPkgs.pkgs-errors).buildDepError "servant-blaze"))
          (hsPkgs."servant-server" or ((hsPkgs.pkgs-errors).buildDepError "servant-server"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      exes = {
        "newsletter-server" = {
          depends = [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."blaze-html" or ((hsPkgs.pkgs-errors).buildDepError "blaze-html"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."clientsession" or ((hsPkgs.pkgs-errors).buildDepError "clientsession"))
            (hsPkgs."email-validate" or ((hsPkgs.pkgs-errors).buildDepError "email-validate"))
            (hsPkgs."http-api-data" or ((hsPkgs.pkgs-errors).buildDepError "http-api-data"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."machines" or ((hsPkgs.pkgs-errors).buildDepError "machines"))
            (hsPkgs."mime-mail" or ((hsPkgs.pkgs-errors).buildDepError "mime-mail"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
            (hsPkgs."psqueues" or ((hsPkgs.pkgs-errors).buildDepError "psqueues"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."servant" or ((hsPkgs.pkgs-errors).buildDepError "servant"))
            (hsPkgs."servant-blaze" or ((hsPkgs.pkgs-errors).buildDepError "servant-blaze"))
            (hsPkgs."servant-server" or ((hsPkgs.pkgs-errors).buildDepError "servant-server"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."newsletter" or ((hsPkgs.pkgs-errors).buildDepError "newsletter"))
            (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
            ];
          buildable = true;
          };
        };
      };
    }