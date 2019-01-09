{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "libravatar"; version = "0.4.0.2"; };
      license = "LicenseRef-PublicDomain";
      copyright = "♡ Copying is an act of love. Please copy, reuse and share.";
      maintainer = "fr33domlover@riseup.net";
      author = "fr33domlover";
      homepage = "https://hub.darcs.net/fr33domlover/libravatar";
      url = "";
      synopsis = "Use Libravatar, the decentralized avatar delivery service";
      description = "This package is a Haskell library for\n<http://libravatar.org Libravatar>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cryptonite)
          (hsPkgs.data-default-class)
          (hsPkgs.dns)
          (hsPkgs.memory)
          (hsPkgs.random)
          (hsPkgs.text)
          (hsPkgs.uri-bytestring)
          (hsPkgs.url)
          ];
        };
      };
    }