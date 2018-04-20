{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "otp-authenticator";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Justin Le 2017";
        maintainer = "justin@jle.im";
        author = "Justin Le";
        homepage = "https://github.com/mstksg/otp-authenticator";
        url = "";
        synopsis = "OTP Authenticator (a la google) command line client";
        description = "Simple tool for keeping track of your one-time pad\ntwo-factor authentication keys; basically a command-line\nversion of the canonical\n<https://github.com/google/google-authenticator google authenticator app>.\n\nThe library uses GnuPG (through /h-gpgme/) to safely\nencrypt your secret keys. The first time you use it, it\nasks for a fingerprint to use for encryption. Currently\n/GnuPG 1.x/ has some issues with /h-gpgme/ when asking\nfor keys, so /GPG 2.x/ is recommended.  Keys are stored,\nencrypted, at `~/.otp-auth.vault` by default.";
        buildType = "Simple";
      };
      components = {
        otp-authenticator = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.sandi
            hsPkgs.haskeline
            hsPkgs.bifunctors
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.cryptonite
            hsPkgs.dependent-sum
            hsPkgs.filepath
            hsPkgs.h-gpgme
            hsPkgs.microlens
            hsPkgs.one-time-password
            hsPkgs.optparse-applicative
            hsPkgs.singletons
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.trifecta
            hsPkgs.type-combinators
            hsPkgs.unix
            hsPkgs.uri-encode
            hsPkgs.witherable
            hsPkgs.yaml
          ];
        };
        exes = {
          otp-auth = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.h-gpgme
              hsPkgs.otp-authenticator
              hsPkgs.text
              hsPkgs.yaml
            ];
          };
        };
        tests = {
          otp-authenticator-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.otp-authenticator
            ];
          };
        };
      };
    }