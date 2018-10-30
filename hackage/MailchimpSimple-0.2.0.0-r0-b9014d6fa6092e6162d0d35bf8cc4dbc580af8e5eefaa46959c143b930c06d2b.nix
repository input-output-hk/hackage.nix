{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "MailchimpSimple";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dan9131@gmail.com";
      author = "Dananji";
      homepage = "https://github.com/Dananji/MailchimpSimple";
      url = "";
      synopsis = "Haskell library to interact with Mailchimp JSON API Version 3.0";
      description = "This package contains the basic functions supported by Mailchimp JSON API. For HTTP Authentication, it uses Basic HTTP Authentication.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.transformers)
          (hsPkgs.safe)
          (hsPkgs.lens)
          (hsPkgs.filepath)
          (hsPkgs.bytestring)
          (hsPkgs.base16-bytestring)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.aeson-lens)
          (hsPkgs.vector)
          (hsPkgs.cryptohash)
          (hsPkgs.time)
          (hsPkgs.directory)
        ];
      };
    };
  }