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
        name = "ses-html";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "David Johnson";
      maintainer = "djohnson.m@gmail.com";
      author = "David Johnson";
      homepage = "";
      url = "";
      synopsis = "Send html emails written in Haskell";
      description = "Send html emails using Amazon's Simple Email Service and Blaze Templating in Haskell";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.blaze-html)
          (hsPkgs.bytestring)
          (hsPkgs.byteable)
          (hsPkgs.cryptohash)
          (hsPkgs.http-streams)
          (hsPkgs.HsOpenSSL)
          (hsPkgs.old-locale)
          (hsPkgs.tagsoup)
          (hsPkgs.time)
        ];
      };
    };
  }