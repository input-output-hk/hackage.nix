{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "aeson-smart";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "amsay@amsay.net";
      author = "Sam Anklesaria";
      homepage = "https://github.com/lassoinc/aeson-smart";
      url = "";
      synopsis = "Smart derivation of Aeson instances";
      description = "aeson-smart generates ToJSON instances that ignore fields\nwith Nothing values and FromJSON instances that ignore\nextra fields and fill in missing fields with their\ndefaults, should they have a Default instance.\nConstructors without parameters have strings of their\nconstructor name as JSON representations.";
      buildType = "Simple";
    };
    components = {
      "aeson-smart" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.data-default)
          (hsPkgs.unordered-containers)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.vector)
        ];
      };
    };
  }