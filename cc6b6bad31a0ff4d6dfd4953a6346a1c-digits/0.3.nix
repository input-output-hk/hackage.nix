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
        name = "digits";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009-2016 Henry Bucklow, Charlie Harvey";
      maintainer = "henry@elsie.org.uk";
      author = "Henry Bucklow";
      homepage = "";
      url = "";
      synopsis = "Converts integers to lists of digits and back.";
      description = "Converts integers to lists of digits and back.";
      buildType = "Simple";
    };
    components = {
      "digits" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
        ];
      };
      tests = {
        "digits-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.digits)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }