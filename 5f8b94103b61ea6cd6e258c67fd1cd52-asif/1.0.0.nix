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
        name = "asif";
        version = "1.0.0";
      };
      license = "MIT";
      copyright = "Arbor Networks";
      maintainer = "tyler.durden@arbor.net";
      author = "Tyler Durden";
      homepage = "https://github.com/packetloop/asif#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on Github at <https://github.com/packetloop/asif#readme>";
      buildType = "Simple";
    };
    components = {
      "asif" = {
        depends  = [
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
          (hsPkgs.hw-bits)
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
          depends  = [
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
            (hsPkgs.hw-bits)
            (hsPkgs.iproute)
            (hsPkgs.lens)
            (hsPkgs.old-locale)
            (hsPkgs.optparse-applicative)
            (hsPkgs.resourcet)
            (hsPkgs.temporary-resourcet)
            (hsPkgs.text)
            (hsPkgs.thyme)
            (hsPkgs.vector)
          ];
        };
      };
      tests = {
        "asif-test" = {
          depends  = [
            (hsPkgs.arbor-ip)
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
            (hsPkgs.hedgehog)
            (hsPkgs.hspec)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-hspec-hedgehog)
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
      };
    };
  }