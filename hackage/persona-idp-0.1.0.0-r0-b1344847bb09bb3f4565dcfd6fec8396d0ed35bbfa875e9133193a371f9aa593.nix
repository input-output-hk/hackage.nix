{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "persona-idp";
        version = "0.1.0.0";
      };
      license = "AGPL-3.0-only";
      copyright = "Copyright (C) 2013, 2014, 2015  Fraser Tweedale";
      maintainer = "frase@frase.id.au";
      author = "Fraser Tweedale";
      homepage = "https://github.com/frasertweedale/hs-persona-idp";
      url = "";
      synopsis = "Persona (BrowserID) Identity Provider";
      description = "\npersona-idp is a simple Mozilla Persona (formerly BrowserID)\nidentity provider (IdP) intended to be run behind an HTTP\nserver providing TLS termination and user authentication.\n\nFor full documentation see\n<https://github.com/frasertweedale/hs-persona-idp>.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "persona" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.lens)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unix)
            (hsPkgs.aeson)
            (hsPkgs.asn1-types)
            (hsPkgs.blaze-markup)
            (hsPkgs.hamlet)
            (hsPkgs.http-types)
            (hsPkgs.optparse-applicative)
            (hsPkgs.pem)
            (hsPkgs.scotty)
            (hsPkgs.shakespeare)
            (hsPkgs.wai)
            (hsPkgs.x509)
            (hsPkgs.crypto-random)
            (hsPkgs.jose)
            (hsPkgs.persona)
          ];
        };
      };
    };
  }