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
        version = "0.21";
      };
      license = "AGPL-3.0-only";
      copyright = "2012-2018 Clint Adams";
      maintainer = "Clint Adams <clint@debian.org>";
      author = "Clint Adams";
      homepage = "https://salsa.debian.org/clint/hOpenPGP";
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
            (hsPkgs.aeson)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.array)
            (hsPkgs.binary)
            (hsPkgs.binary-conduit)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.errors)
            (hsPkgs.hOpenPGP)
            (hsPkgs.lens)
            (hsPkgs.monad-loops)
            (hsPkgs.openpgp-asciiarmor)
            (hsPkgs.optparse-applicative)
            (hsPkgs.prettyprinter)
            (hsPkgs.resourcet)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.yaml)
          ];
          build-tools = [
            (hsPkgs.buildPackages.alex)
            (hsPkgs.buildPackages.happy)
          ];
        };
        "hokey" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.base16-bytestring)
            (hsPkgs.binary)
            (hsPkgs.binary-conduit)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.containers)
            (hsPkgs.crypto-pubkey)
            (hsPkgs.cryptohash)
            (hsPkgs.directory)
            (hsPkgs.errors)
            (hsPkgs.hOpenPGP)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.http-types)
            (hsPkgs.ixset-typed)
            (hsPkgs.lens)
            (hsPkgs.monad-loops)
            (hsPkgs.openpgp-asciiarmor)
            (hsPkgs.optparse-applicative)
            (hsPkgs.prettyprinter)
            (hsPkgs.prettyprinter-ansi-terminal)
            (hsPkgs.resourcet)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.time-locale-compat)
            (hsPkgs.transformers)
            (hsPkgs.yaml)
          ];
        };
        "hkt" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.array)
            (hsPkgs.attoparsec)
            (hsPkgs.binary)
            (hsPkgs.binary-conduit)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.containers)
            (hsPkgs.crypto-pubkey)
            (hsPkgs.directory)
            (hsPkgs.errors)
            (hsPkgs.fgl)
            (hsPkgs.graphviz)
            (hsPkgs.hOpenPGP)
            (hsPkgs.ixset-typed)
            (hsPkgs.lens)
            (hsPkgs.monad-loops)
            (hsPkgs.optparse-applicative)
            (hsPkgs.prettyprinter)
            (hsPkgs.resourcet)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.yaml)
          ];
          build-tools = [
            (hsPkgs.buildPackages.alex)
            (hsPkgs.buildPackages.happy)
          ];
        };
      };
    };
  }