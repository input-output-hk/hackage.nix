{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = {
        name = "instant-aeson";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Renzo Carbonara 2015";
      maintainer = "renzo@carbonara.com.ar";
      author = "Renzo Carbonara";
      homepage = "";
      url = "";
      synopsis = "Generic Aeson instances through instant-generics";
      description = "";
      buildType = "Simple";
    };
    components = {
      "instant-aeson" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.instant-generics)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.instant-aeson)
            (hsPkgs.instant-generics)
          ];
        };
      };
    };
  }