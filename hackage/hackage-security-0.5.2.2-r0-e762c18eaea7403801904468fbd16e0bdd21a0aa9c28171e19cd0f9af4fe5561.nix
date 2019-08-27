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
    flags = { base48 = true; use-network-uri = true; old-directory = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hackage-security"; version = "0.5.2.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2015-2016 Well-Typed LLP";
      maintainer = "edsko@well-typed.com";
      author = "Edsko de Vries";
      homepage = "https://github.com/well-typed/hackage-security";
      url = "";
      synopsis = "Hackage security library";
      description = "The hackage security library provides both server and\nclient utilities for securing the Hackage package server\n(<http://hackage.haskell.org/>).  It is based on The Update\nFramework (<http://theupdateframework.com/>), a set of\nrecommendations developed by security researchers at\nvarious universities in the US as well as developers on the\nTor project (<https://www.torproject.org/>).\n\nThe current implementation supports only index signing,\nthereby enabling untrusted mirrors. It does not yet provide\nfacilities for author package signing.\n\nThe library has two main entry points:\n\"Hackage.Security.Client\" is the main entry point for\nclients (the typical example being @cabal@), and\n\"Hackage.Security.Server\" is the main entry point for\nservers (the typical example being @hackage-server@).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."ed25519" or (buildDepError "ed25519"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."cryptohash-sha256" or (buildDepError "cryptohash-sha256"))
          (hsPkgs."tar" or (buildDepError "tar"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."zlib" or (buildDepError "zlib"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          ] ++ (if flags.old-directory
          then [
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            ]
          else [
            (hsPkgs."directory" or (buildDepError "directory"))
            ])) ++ (if flags.base48
          then [ (hsPkgs."base" or (buildDepError "base")) ]
          else [
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            ])) ++ (if flags.use-network-uri
          then [
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            (hsPkgs."network" or (buildDepError "network"))
            ]
          else [ (hsPkgs."network" or (buildDepError "network")) ]);
        };
      tests = {
        "TestSuite" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."hackage-security" or (buildDepError "hackage-security"))
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            (hsPkgs."tar" or (buildDepError "tar"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            ];
          };
        };
      };
    }