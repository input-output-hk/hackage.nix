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
    flags = { library-only = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "toxcore"; version = "0.2.11"; };
      license = "GPL-3.0-only";
      copyright = "© 2016-2020 The TokTok Team";
      maintainer = "iphy";
      author = "iphy";
      homepage = "https://toktok.ltd";
      url = "";
      synopsis = "A Tox protocol implementation in Haskell";
      description = "A Tox protocol implementation in Haskell";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."binary-bits" or (buildDepError "binary-bits"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."clock" or (buildDepError "clock"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."entropy" or (buildDepError "entropy"))
          (hsPkgs."integer-gmp" or (buildDepError "integer-gmp"))
          (hsPkgs."iproute" or (buildDepError "iproute"))
          (hsPkgs."lens-family" or (buildDepError "lens-family"))
          (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
          (hsPkgs."msgpack-binary" or (buildDepError "msgpack-binary"))
          (hsPkgs."msgpack-rpc-conduit" or (buildDepError "msgpack-rpc-conduit"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."saltine" or (buildDepError "saltine"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "toxsave-convert" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."groom" or (buildDepError "groom"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."toxcore" or (buildDepError "toxcore"))
            ];
          buildable = if flags.library-only then false else true;
          };
        };
      tests = {
        "testsuite" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."binary-bits" or (buildDepError "binary-bits"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."msgpack-binary" or (buildDepError "msgpack-binary"))
            (hsPkgs."msgpack-rpc-conduit" or (buildDepError "msgpack-rpc-conduit"))
            (hsPkgs."msgpack-types" or (buildDepError "msgpack-types"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."saltine" or (buildDepError "saltine"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."toxcore" or (buildDepError "toxcore"))
            ];
          buildable = true;
          };
        };
      };
    }