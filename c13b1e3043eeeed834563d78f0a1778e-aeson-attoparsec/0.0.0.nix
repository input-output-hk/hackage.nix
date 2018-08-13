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
      specVersion = "1.10";
      identifier = {
        name = "aeson-attoparsec";
        version = "0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Athan Clark";
      maintainer = "athan.clark@gmail.com";
      author = "Athan Clark";
      homepage = "https://github.com/athanclark/aeson-attoparsec#readme";
      url = "";
      synopsis = "Embed an Attoparsec text parser into an Aeson parser";
      description = "";
      buildType = "Simple";
    };
    components = {
      "aeson-attoparsec" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
        ];
      };
      tests = {
        "aeson-attoparsec-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson-attoparsec)
          ];
        };
      };
    };
  }