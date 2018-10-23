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
        name = "flay";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Renzo Carbonara 2017";
      maintainer = "renλren!zone";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/flay";
      url = "";
      synopsis = "Work on your datatype without knowing its shape nor its contents.";
      description = "Work on your datatype without knowing its shape nor its contents using\na principlied approach.";
      buildType = "Simple";
    };
    components = {
      "flay" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.constraints)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.flay)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
    };
  }