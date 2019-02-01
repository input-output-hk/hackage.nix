{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "net-mqtt"; version = "0.2.2.0"; };
      license = "BSD-3-Clause";
      copyright = "BSD3";
      maintainer = "dustin@spy.net";
      author = "Dustin Sallings";
      homepage = "https://github.com/dustin/mqtt#readme";
      url = "";
      synopsis = "An MQTT Protocol Implementation.";
      description = "Please see the README on GitHub at <https://github.com/dustin/mqtt#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.async)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.containers)
          (hsPkgs.network-conduit-tls)
          (hsPkgs.network-uri)
          (hsPkgs.stm)
          (hsPkgs.text)
          ];
        };
      exes = {
        "mqtt" = {
          depends = [
            (hsPkgs.async)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.containers)
            (hsPkgs.net-mqtt)
            (hsPkgs.network-conduit-tls)
            (hsPkgs.network-uri)
            (hsPkgs.stm)
            (hsPkgs.text)
            ];
          };
        };
      tests = {
        "mqtt-test" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.async)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.containers)
            (hsPkgs.net-mqtt)
            (hsPkgs.network-conduit-tls)
            (hsPkgs.network-uri)
            (hsPkgs.stm)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
            ];
          };
        };
      };
    }