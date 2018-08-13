{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "Quickson";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Scott Sadler <ssadler@mashi.org>";
      author = "Scott Sadler";
      homepage = "https://github.com/ssadler/quickson";
      url = "";
      synopsis = "Quick JSON extractions with Aeson";
      description = "";
      buildType = "Simple";
    };
    components = {
      "Quickson" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.attoparsec)
          (hsPkgs.either)
        ];
      };
    };
  }