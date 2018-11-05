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
        name = "attoparsec-ip";
        version = "0.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "2018 (c) Local Cooking Inc.";
      maintainer = "athan.clark@localcooking.com";
      author = "Athan Clark";
      homepage = "https://github.com/athanclark/attoparsec-ip#readme";
      url = "";
      synopsis = "Parse IP data types with attoparsec";
      description = "Please see the README on GitHub at <https://github.com/athanclark/attoparsec-ip#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.ip)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "attoparsec-ip-test" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.attoparsec)
            (hsPkgs.attoparsec-ip)
            (hsPkgs.base)
            (hsPkgs.ip)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }