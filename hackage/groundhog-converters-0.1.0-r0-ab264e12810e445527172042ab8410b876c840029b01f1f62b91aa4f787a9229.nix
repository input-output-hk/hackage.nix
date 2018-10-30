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
        name = "groundhog-converters";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Scott Murphy <scottmurphy09@gmail.com>";
      author = "Scott Murphy <scottmurphy09@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Extended Converter Library for groundhog embedded types";
      description = "Groundhog allows a programmer to represent a haskell datatype by an equivalent type that is more suited for Database work.\ngroundhog-converters provides a selection of common converters that have proved useful.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.bimap)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.groundhog-converters)
            (hsPkgs.groundhog)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.groundhog-sqlite)
            (hsPkgs.groundhog-th)
            (hsPkgs.containers)
            (hsPkgs.bimap)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }