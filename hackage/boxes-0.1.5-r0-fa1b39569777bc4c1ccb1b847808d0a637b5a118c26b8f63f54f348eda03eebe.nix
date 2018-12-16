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
      specVersion = "1.9.2";
      identifier = {
        name = "boxes";
        version = "0.1.5";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "David Feuer <David.Feuer@gmail.com>";
      author = "Brent Yorgey";
      homepage = "";
      url = "";
      synopsis = "2D text pretty-printing library";
      description = "A pretty-printing library for laying out text in\ntwo dimensions, using a simple box model.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.split)
        ];
      };
      tests = {
        "test-boxes" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.split)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }