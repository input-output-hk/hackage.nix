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
        name = "lackey";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Taylor Fausak";
      author = "";
      homepage = "";
      url = "";
      synopsis = "A library for generating Ruby consumers of Servant APIs.";
      description = "<https://github.com/tfausak/lackey#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.servant)
        ];
      };
      tests = {
        "lackey-test-suite" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.lackey)
            (hsPkgs.servant)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
          ];
        };
      };
    };
  }