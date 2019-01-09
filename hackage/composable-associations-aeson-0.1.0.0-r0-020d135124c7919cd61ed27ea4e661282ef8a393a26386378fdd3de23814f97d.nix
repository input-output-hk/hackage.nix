{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "composable-associations-aeson";
        version = "0.1.0.0";
        };
      license = "BSD-3-Clause";
      copyright = "2017 Samuel Protas";
      maintainer = "sam.protas@gmail.com";
      author = "Sam Protas";
      homepage = "https://github.com/SamProtas/composable-associations#readme";
      url = "";
      synopsis = "Aeson ToJSON/FromJSON implementation for the types of composable-associations";
      description = "This library provides the orphan instances implementation JSON serialization for the types in\ncomposiable-associations, as well as any other Aeson-specific implementation details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.composable-associations)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.aeson)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.composable-associations-aeson)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.bytestring)
            ];
          };
        "doctest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.composable-associations-aeson)
            (hsPkgs.doctest)
            (hsPkgs.bytestring)
            ];
          };
        };
      };
    }