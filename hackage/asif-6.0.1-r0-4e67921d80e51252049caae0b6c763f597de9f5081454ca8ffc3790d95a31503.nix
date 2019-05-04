{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "asif"; version = "6.0.1"; };
      license = "MIT";
      copyright = "Arbor Networks";
      maintainer = "mayhem@arbor.net";
      author = "Arbor Networks";
      homepage = "https://github.com/arbor/asif#readme";
      url = "";
      synopsis = "Library for creating and querying segmented feeds";
      description = "Library for creating and querying segmented feeds. Please see <https://github.com/arbor/asif#readme>";
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
            (hsPkgs.asif)
            (hsPkgs.directory)
            (hsPkgs.optparse-applicative)
            ];
          };
        };
      tests = {
        "asif-test" = {
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
            (hsPkgs.asif)
            (hsPkgs.hedgehog)
            (hsPkgs.hspec)
            (hsPkgs.hw-hspec-hedgehog)
            ];
          };
        };
      };
    }