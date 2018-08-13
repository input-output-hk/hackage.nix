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
        name = "dhcp-lease-parser";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/dhcp-lease-parser#readme";
      url = "";
      synopsis = "Parse a DHCP lease file";
      description = "";
      buildType = "Simple";
    };
    components = {
      "dhcp-lease-parser" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.chronos)
          (hsPkgs.ip)
        ];
      };
      tests = {
        "dhcp-lease-parser-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.attoparsec)
            (hsPkgs.dhcp-lease-parser)
            (hsPkgs.bytestring)
            (hsPkgs.chronos)
            (hsPkgs.ip)
          ];
        };
      };
    };
  }