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
      specVersion = "2.2";
      identifier = {
        name = "monus";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/monus#readme";
      url = "";
      synopsis = "a 'Monus' is a commutative monoid that allows a notion of substraction.";
      description = "A 'Monus' is a commutative monoid that allows a notion of substraction,\nwith the following laws:\n\nx <> (y - x) = y <> (x - y)\n\n(x - y) - z = x - (y <> z)\n\nx - x = mempty\n\nmempty - x = mempty";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.smallcheck)
            (hsPkgs.monus)
            (hsPkgs.tasty)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
    };
  }