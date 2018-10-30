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
      specVersion = "1.8";
      identifier = {
        name = "twill";
        version = "0.1.0.3";
      };
      license = "MIT";
      copyright = "2012 Joseph Abrahamson, Reify Health LLC";
      maintainer = "Joseph Abrahamson <me@jspha.com>";
      author = "Joseph Abrahamson <me@jspha.com>";
      homepage = "";
      url = "";
      synopsis = "Twilio API interaction";
      description = "A little Twilio library";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
          (hsPkgs.errors)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.base16-bytestring)
          (hsPkgs.base64-bytestring)
          (hsPkgs.datetime)
          (hsPkgs.old-locale)
          (hsPkgs.time)
          (hsPkgs.attoparsec)
          (hsPkgs.aeson)
          (hsPkgs.cryptohash)
          (hsPkgs.data-default)
        ];
      };
    };
  }