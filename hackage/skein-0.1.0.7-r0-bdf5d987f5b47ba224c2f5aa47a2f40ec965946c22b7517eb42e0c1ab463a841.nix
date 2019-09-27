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
    flags = {
      reference = false;
      force-endianness = false;
      big-endian = false;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "skein"; version = "0.1.0.7"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Felipe Lessa <felipe.lessa@gmail.com>";
      author = "Felipe Lessa <felipe.lessa@gmail.com>, Doug Whiting";
      homepage = "https://github.com/meteficha/skein";
      url = "";
      synopsis = "Skein, a family of cryptographic hash functions.  Includes Skein-MAC as well.";
      description = "Skein (<http://www.skein-hash.info/>) is a family of fast\nsecure cryptographic hash functions designed by Niels\nFerguson, Stefan Lucks, Bruce Schneier, Doug Whiting, Mihir\nBellare, Tadayoshi Kohno, Jon Callas and Jesse Walker.\n\nThis package uses bindings to the optimized C implementation\nof Skein.  We provide a high-level interface (see module\n\"Crypto.Skein\") to some of the Skein use cases.  We also\nprovide a low-level interface (see module\n\"Crypto.Skein.Internal\") should you need to use Skein in a\ndifferent way.\n\nCurrently we have support for Skein as cryptographic hash\nfunction as Skein as a message authentication code\n(Skein-MAC).  For examples of how to use this package, see\n\"Crypto.Skein\" module documentation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          (hsPkgs."crypto-api" or (buildDepError "crypto-api"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      tests = {
        "runtests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."crypto-api" or (buildDepError "crypto-api"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."skein" or (buildDepError "skein"))
            ];
          buildable = true;
          };
        };
      };
    }