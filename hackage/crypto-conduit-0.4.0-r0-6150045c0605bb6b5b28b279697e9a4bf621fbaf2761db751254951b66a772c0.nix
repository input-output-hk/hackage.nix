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
    flags = { old-crypto-api = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "crypto-conduit"; version = "0.4.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Felipe Lessa <felipe.lessa@gmail.com>";
      author = "Felipe Lessa <felipe.lessa@gmail.com>";
      homepage = "https://github.com/meteficha/crypto-conduit";
      url = "";
      synopsis = "Conduit interface for cryptographic operations (from crypto-api).";
      description = "This package contains everything that you need to use a\ncryptographic package that supports the @crypto-api@ package\nusing conduits from the @conduit@ package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ] ++ [ (hsPkgs."crypto-api" or (buildDepError "crypto-api")) ];
        };
      tests = {
        "runtests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."crypto-api" or (buildDepError "crypto-api"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."cryptocipher" or (buildDepError "cryptocipher"))
            (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
            (hsPkgs."skein" or (buildDepError "skein"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."crypto-conduit" or (buildDepError "crypto-conduit"))
            ];
          };
        };
      };
    }