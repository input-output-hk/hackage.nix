{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "iso8601-duration"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2016-2018 Alberto Valverde";
      maintainer = "alberto@meteogrid.com";
      author = "Alberto Valverde (original code from Niklas Hambüchen?)";
      homepage = "https://github.com/meteogrid/iso8601-duration";
      url = "";
      synopsis = "Types and parser for ISO8601 durations";
      description = "Types and parser for ISO8601 durations and intervals";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.attoparsec)
          (hsPkgs.time)
          (hsPkgs.bytestring-lexing)
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.time)
            (hsPkgs.hspec)
            (hsPkgs.hspec-core)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.iso8601-duration)
            ];
          };
        };
      };
    }