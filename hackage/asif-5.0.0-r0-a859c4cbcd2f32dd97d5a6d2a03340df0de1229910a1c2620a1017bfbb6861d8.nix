{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "asif"; version = "5.0.0"; };
      license = "MIT";
      copyright = "Arbor Networks";
      maintainer = "mayhem@arbor.net";
      author = "Arbor Networks";
      homepage = "https://github.com/packetloop/asif#readme";
      url = "";
      synopsis = "Library for creating and querying segmented feeds";
      description = "Library for creating and querying segmented feeds. Please see <https://github.com/packetloop/asif#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-combinators)
          (hsPkgs.conduit-extra)
          (hsPkgs.containers)
          (hsPkgs.cpu)
          (hsPkgs.either)
          (hsPkgs.exceptions)
          (hsPkgs.foldl)
          (hsPkgs.generic-lens)
          (hsPkgs.hw-bits)
          (hsPkgs.hw-ip)
          (hsPkgs.iproute)
          (hsPkgs.lens)
          (hsPkgs.network)
          (hsPkgs.old-locale)
          (hsPkgs.profunctors)
          (hsPkgs.resourcet)
          (hsPkgs.temporary-resourcet)
          (hsPkgs.text)
          (hsPkgs.thyme)
          (hsPkgs.transformers)
          (hsPkgs.vector)
          ];
        };
      exes = {
        "asif" = {
          depends = [
            (hsPkgs.asif)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-combinators)
            (hsPkgs.conduit-extra)
            (hsPkgs.containers)
            (hsPkgs.cpu)
            (hsPkgs.directory)
            (hsPkgs.either)
            (hsPkgs.exceptions)
            (hsPkgs.foldl)
            (hsPkgs.generic-lens)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-ip)
            (hsPkgs.iproute)
            (hsPkgs.lens)
            (hsPkgs.network)
            (hsPkgs.old-locale)
            (hsPkgs.optparse-applicative)
            (hsPkgs.profunctors)
            (hsPkgs.resourcet)
            (hsPkgs.temporary-resourcet)
            (hsPkgs.text)
            (hsPkgs.thyme)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            ];
          };
        };
      tests = {
        "asif-test" = {
          depends = [
            (hsPkgs.asif)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-combinators)
            (hsPkgs.conduit-extra)
            (hsPkgs.containers)
            (hsPkgs.cpu)
            (hsPkgs.either)
            (hsPkgs.exceptions)
            (hsPkgs.foldl)
            (hsPkgs.generic-lens)
            (hsPkgs.hedgehog)
            (hsPkgs.hspec)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-hspec-hedgehog)
            (hsPkgs.hw-ip)
            (hsPkgs.iproute)
            (hsPkgs.lens)
            (hsPkgs.network)
            (hsPkgs.old-locale)
            (hsPkgs.profunctors)
            (hsPkgs.resourcet)
            (hsPkgs.temporary-resourcet)
            (hsPkgs.text)
            (hsPkgs.thyme)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }