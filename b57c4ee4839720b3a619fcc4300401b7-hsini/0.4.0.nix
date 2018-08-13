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
        name = "hsini";
        version = "0.4.0";
      };
      license = "BSD-3-Clause";
      copyright = "Magnus Therning, 2010-2014";
      maintainer = "magnus@therning.org";
      author = "Magnus Therning";
      homepage = "";
      url = "";
      synopsis = "Package for user configuration files (INI)";
      description = "None yet";
      buildType = "Custom";
    };
    components = {
      "hsini" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
        ];
      };
      tests = {
        "hsini-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.parsec)
            (hsPkgs.mtl)
            (hsPkgs.HUnit)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-th)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }