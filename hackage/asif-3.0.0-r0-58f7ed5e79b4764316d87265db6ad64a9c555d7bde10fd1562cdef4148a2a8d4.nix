{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "asif"; version = "3.0.0"; };
      license = "MIT";
      copyright = "Arbor Networks";
      maintainer = "mayhem@arbor.net";
      author = "Arbor Networks";
      homepage = "https://github.com/packetloop/asif#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on Github at <https://github.com/packetloop/asif#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-combinators)
          (hsPkgs.conduit-extra)
          (hsPkgs.containers)
          (hsPkgs.cpu)
          (hsPkgs.either)
          (hsPkgs.exceptions)
          (hsPkgs.generic-lens)
          (hsPkgs.hw-bits)
          (hsPkgs.hw-ip)
          (hsPkgs.iproute)
          (hsPkgs.lens)
          (hsPkgs.old-locale)
          (hsPkgs.resourcet)
          (hsPkgs.temporary-resourcet)
          (hsPkgs.text)
          (hsPkgs.thyme)
          (hsPkgs.vector)
          ];
        };
      exes = {
        "asif" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-combinators)
            (hsPkgs.conduit-extra)
            (hsPkgs.containers)
            (hsPkgs.cpu)
            (hsPkgs.either)
            (hsPkgs.exceptions)
            (hsPkgs.generic-lens)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-ip)
            (hsPkgs.iproute)
            (hsPkgs.lens)
            (hsPkgs.old-locale)
            (hsPkgs.resourcet)
            (hsPkgs.temporary-resourcet)
            (hsPkgs.text)
            (hsPkgs.thyme)
            (hsPkgs.vector)
            (hsPkgs.asif)
            (hsPkgs.directory)
            (hsPkgs.optparse-applicative)
            ];
          };
        };
      tests = {
        "asif-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-combinators)
            (hsPkgs.conduit-extra)
            (hsPkgs.containers)
            (hsPkgs.cpu)
            (hsPkgs.either)
            (hsPkgs.exceptions)
            (hsPkgs.generic-lens)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-ip)
            (hsPkgs.iproute)
            (hsPkgs.lens)
            (hsPkgs.old-locale)
            (hsPkgs.resourcet)
            (hsPkgs.temporary-resourcet)
            (hsPkgs.text)
            (hsPkgs.thyme)
            (hsPkgs.vector)
            (hsPkgs.asif)
            (hsPkgs.hspec)
            (hsPkgs.hedgehog)
            (hsPkgs.hw-hspec-hedgehog)
            ];
          };
        };
      };
    }