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
      specVersion = "1.24";
      identifier = {
        name = "locators";
        version = "0.2.4.4";
      };
      license = "BSD-3-Clause";
      copyright = "© 2013-2018 Operational Dynamics Consulting, Pty Ltd and Others";
      maintainer = "Andrew Cowie <andrew@operationaldynamics.com>";
      author = "Andrew Cowie <andrew@operationaldynamics.com>";
      homepage = "";
      url = "";
      synopsis = "Human exchangable identifiers and locators";
      description = "/Overview/\n\nSimple identifiers (as used, for example, as \"locators\" in airline reservation\nsystems) using a subset of the Latin1 alphabet whose characters are unambigious\nwhen written or spoken.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.cryptohash)
        ];
      };
      tests = {
        "check" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.cryptohash)
            (hsPkgs.locators)
          ];
        };
      };
    };
  }