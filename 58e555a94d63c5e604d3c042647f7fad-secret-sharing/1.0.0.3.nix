{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "secret-sharing";
          version = "1.0.0.3";
        };
        license = "LGPL-2.1-only";
        copyright = "Peter Robinson 2014";
        maintainer = "peter.robinson@monoid.at";
        author = "Peter Robinson <peter.robinson@monoid.at>";
        homepage = "http://monoid.at/code";
        url = "";
        synopsis = "Information-theoretic secure secret sharing";
        description = "Implementation of an (@m@,@n@)-threshold secret sharing scheme.\nA given ByteString @b@ (the secret) is split into @n@ shares,\nand any @m@ shares are sufficient to reconstruct @b@.\nThe scheme preserves information-theoretic perfect secrecy in the sense that the knowledge of up\nto @m-1@ shares does not reveal any information about the secret @b@.\n\n/Example in GHCi:/\nSuppose that you want to split the string \\\"my secret data\\\" into n=5 shares such that\nat least m=3 shares are necessary to reconstruct the secret.\n\n>> :m + Data.ByteString.Lazy.Char8 Crypto.SecretSharing\n>> let secret = pack \"my secret message!\"\n>> shares <- encode 3 5 secret\n>> mapM_ (Prelude.putStrLn . show) shares -- each share should be deposited at a different site.\n> (1,\"\\134\\168\\154\\SUBV\\248\\CAN:\\250y<\\GS\\EOT*\\t\\222_\\140\")\n> (2,\"\\225\\206\\241\\136\\SUBse\\199r\\169\\162\\131D4\\179P\\210x\")\n> (3,\"~\\238%\\192\\174\\206\\\\\\f\\214\\173\\162\\148\\&3\\139_\\183\\193\\235\")\n> (4,\"Z\\b0\\188\\DC2\\f\\247\\f,\\136\\&6S\\209\\&5\\n\\FS,\\223\")\n> (5,\"x\\EM\\CAN\\DELI*<\\193q7d\\192!/\\183v\\DC3T\")\n>> let shares' = Prelude.drop 2 shares\n>> decode shares'\n> \"my secret message!\"\n\nThe mathematics behind the secret sharing scheme is described in:\n\\\"/How to share a secret/.\\\" by Adi Shamir.\nIn Communications of the ACM 22 (11): 612–613, 1979.";
        buildType = "Simple";
      };
      components = {
        secret-sharing = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.dice-entropy-conduit
            hsPkgs.binary
            hsPkgs.vector
            hsPkgs.finite-field
            hsPkgs.polynomial
          ];
        };
        tests = {
          Main = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
            ];
          };
        };
      };
    }