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
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.blaze-html)
          (hsPkgs.bytestring)
          (hsPkgs.clientsession)
          (hsPkgs.email-validate)
          (hsPkgs.http-api-data)
          (hsPkgs.lens)
          (hsPkgs.machines)
          (hsPkgs.mime-mail)
          (hsPkgs.mtl)
          (hsPkgs.network-uri)
          (hsPkgs.psqueues)
          (hsPkgs.random)
          (hsPkgs.servant)
          (hsPkgs.servant-blaze)
          (hsPkgs.servant-server)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          ];
        };
      exes = {
        "newsletter-server" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.blaze-html)
            (hsPkgs.bytestring)
            (hsPkgs.clientsession)
            (hsPkgs.email-validate)
            (hsPkgs.http-api-data)
            (hsPkgs.lens)
            (hsPkgs.machines)
            (hsPkgs.mime-mail)
            (hsPkgs.mtl)
            (hsPkgs.network-uri)
            (hsPkgs.psqueues)
            (hsPkgs.random)
            (hsPkgs.servant)
            (hsPkgs.servant-blaze)
            (hsPkgs.servant-server)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unordered-containers)
            (hsPkgs.newsletter)
            (hsPkgs.warp)
            ];
          };
        };
      };
    }