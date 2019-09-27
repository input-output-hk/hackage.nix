let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "secret-sharing"; version = "1.0.0.3"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."dice-entropy-conduit" or (buildDepError "dice-entropy-conduit"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."finite-field" or (buildDepError "finite-field"))
          (hsPkgs."polynomial" or (buildDepError "polynomial"))
          ];
        buildable = true;
        };
      tests = {
        "Main" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            ];
          buildable = true;
          };
        };
      };
    }