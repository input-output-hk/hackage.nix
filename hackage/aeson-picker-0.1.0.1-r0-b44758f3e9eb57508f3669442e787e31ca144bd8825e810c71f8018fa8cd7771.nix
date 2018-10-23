{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "aeson-picker";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2018, Bogdan Neterebskii";
      maintainer = "bog2dan1@gmail.com";
      author = "Bogdan Neterebskii";
      homepage = "https://github.com/ozzzzz/aeson-picker#readme";
      url = "";
      synopsis = "";
      description = "Tiny library to get fields from JSON format";
      buildType = "Simple";
    };
    components = {
      "aeson-picker" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.lens)
          (hsPkgs.lens-aeson)
          (hsPkgs.text)
        ];
      };
      tests = {
        "aeson-picker-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson-picker)
            (hsPkgs.hspec)
            (hsPkgs.text)
          ];
        };
      };
    };
  }