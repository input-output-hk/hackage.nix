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
      specVersion = "1.8";
      identifier = {
        name = "aeson-smart";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "amsay@amsay.net";
      author = "Sam Anklesaria";
      homepage = "https://github.com/lassoinc/aeson-smart";
      url = "";
      synopsis = "Smart derivation of Aeson instances";
      description = "Aeson-smart generates ToJSON and FromJSON instances that ignore extra fields\nand fill in missing fields with default values.";
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