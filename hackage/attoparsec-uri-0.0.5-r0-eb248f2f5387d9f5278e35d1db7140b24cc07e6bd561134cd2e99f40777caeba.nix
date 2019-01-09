{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "attoparsec-uri"; version = "0.0.5"; };
      license = "BSD-3-Clause";
      copyright = "2018 (c) Local Cooking Inc.";
      maintainer = "athan.clark@localcooking.com";
      author = "Athan Clark";
      homepage = "https://github.com/athanclark/attoparsec-uri#readme";
      url = "";
      synopsis = "URI parser / printer using attoparsec";
      description = "Please see the README on GitHub at <https://github.com/githubuser/purescript-iso#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.QuickCheck)
          (hsPkgs.attoparsec)
          (hsPkgs.attoparsec-ip)
          (hsPkgs.base)
          (hsPkgs.bytedump)
          (hsPkgs.ip)
          (hsPkgs.quickcheck-instances)
          (hsPkgs.strict)
          (hsPkgs.text)
          (hsPkgs.vector)
          ];
        };
      tests = {
        "attoparsec-uri-test" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.attoparsec)
            (hsPkgs.attoparsec-ip)
            (hsPkgs.base)
            (hsPkgs.bytedump)
            (hsPkgs.ip)
            (hsPkgs.purescript-iso)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.strict)
            (hsPkgs.text)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }