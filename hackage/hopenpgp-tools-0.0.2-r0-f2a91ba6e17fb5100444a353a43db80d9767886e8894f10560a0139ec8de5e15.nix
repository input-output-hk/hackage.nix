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
        name = "hopenpgp-tools";
        version = "0.0.2";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "2012-2013 Clint Adams";
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
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.cereal-conduit)
            (hsPkgs.conduit)
            (hsPkgs.hOpenPGP)
            (hsPkgs.openpgp-asciiarmor)
            (hsPkgs.optparse-applicative)
            (hsPkgs.transformers)
          ];
        };
        "hokey" = {
          depends = [
            (hsPkgs.base)
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
            (hsPkgs.transformers)
          ];
        };
        "hkt" = {
          depends = [
            (hsPkgs.base)
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
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }