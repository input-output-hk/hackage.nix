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
        name = "parsec-numeric";
        version = "0.1.0.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "2017 Andrew Rademacher";
      maintainer = "andrewrademacher@gmail.com";
      author = "Andrew Rademacher";
      homepage = "https://github.com/AndrewRademacher/parsec-numeric";
      url = "";
      synopsis = "Parsec combinators for parsing Haskell numeric types.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "parsec-numeric" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
        ];
      };
      tests = {
        "parsec-numeric-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.parsec)
            (hsPkgs.parsec-numeric)
            (hsPkgs.text)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-th)
          ];
        };
      };
    };
  }