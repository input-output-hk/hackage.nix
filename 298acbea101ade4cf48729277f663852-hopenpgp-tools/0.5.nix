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
        name = "hopenpgp-tools";
        version = "0.5";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "2012-2014 Clint Adams";
      maintainer = "Clint Adams <clint@debian.org>";
      author = "Clint Adams";
      homepage = "http://floss.scru.org/hopenpgp-tools";
      url = "";
      synopsis = "hOpenPGP-based command-line tools";
      description = "command-line tools for performing some OpenPGP-related operations";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hot" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.cereal-conduit)
            (hsPkgs.conduit)
            (hsPkgs.hOpenPGP)
            (hsPkgs.lens)
            (hsPkgs.openpgp-asciiarmor)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
            (hsPkgs.transformers)
          ];
        };
        "hokey" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.base16-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.cereal-conduit)
            (hsPkgs.conduit)
            (hsPkgs.containers)
            (hsPkgs.crypto-pubkey)
            (hsPkgs.cryptohash)
            (hsPkgs.directory)
            (hsPkgs.errors)
            (hsPkgs.hOpenPGP)
            (hsPkgs.lens)
            (hsPkgs.old-locale)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.yaml)
          ];
        };
        "hkt" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.cereal-conduit)
            (hsPkgs.conduit)
            (hsPkgs.crypto-pubkey)
            (hsPkgs.directory)
            (hsPkgs.hOpenPGP)
            (hsPkgs.ixset)
            (hsPkgs.lens)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }