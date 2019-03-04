{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "smith-cli"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2019, HotelKilo";
      maintainer = "mth@smith.st";
      author = "Mark Hibberd";
      homepage = "https://github.com/smith-security/smith-cli";
      url = "";
      synopsis = "Command line tool for <https://smith.st/ Smith>.";
      description = "This is a command line tool for interacting with <https://smith.st Smith>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "smith" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.base64-bytestring)
            (hsPkgs.cereal)
            (hsPkgs.crypto-pubkey-openssh)
            (hsPkgs.crypto-pubkey-types)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.HsOpenSSL)
            (hsPkgs.network)
            (hsPkgs.openssh-protocol)
            (hsPkgs.optparse-applicative)
            (hsPkgs.smith-client)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.transformers-bifunctors)
            (hsPkgs.unix)
            ];
          };
        };
      };
    }