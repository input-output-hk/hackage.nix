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
        name = "tropical";
        version = "0.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2014, Peter Harpending.";
      maintainer = "Peter Harpending <pharpend2@gmail.com>";
      author = "Peter Harpending";
      homepage = "";
      url = "";
      synopsis = "A library for tropical mathematics.";
      description = "Tropical numbers are the same as real numbers, except the operations are\ndifferent. See the documentation for more information.";
      buildType = "Simple";
    };
    components = {
      "tropical" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.semiring-simple)
        ];
      };
    };
  }