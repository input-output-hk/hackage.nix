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
        name = "teleshell";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/teleshell#readme";
      url = "";
      synopsis = "Telnet client and other things";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.primitive)
          (hsPkgs.pipes)
          (hsPkgs.network)
          (hsPkgs.transformers)
          (hsPkgs.attoparsec)
          (hsPkgs.text)
          (hsPkgs.hashable)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "teleshell-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.teleshell)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.bytestring)
            (hsPkgs.pipes)
            (hsPkgs.split)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }