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
      specVersion = "1.2";
      identifier = {
        name = "quickson";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Scott Sadler <scott@scottsadler.de>";
      author = "Scott Sadler";
      homepage = "https://github.com/libscott/quickson";
      url = "";
      synopsis = "Quick JSON extractions with Aeson";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.attoparsec)
        ];
      };
    };
  }