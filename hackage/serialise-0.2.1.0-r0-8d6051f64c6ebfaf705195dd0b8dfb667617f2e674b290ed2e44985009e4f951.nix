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
    flags = { newtime15 = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "serialise"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2015-2017 Duncan Coutts,\n2015-2017 Well-Typed LLP,\n2015 IRIS Connect Ltd";
      maintainer = "duncan@community.haskell.org, ben@smart-cactus.org";
      author = "Duncan Coutts";
      homepage = "https://github.com/well-typed/cborg";
      url = "";
      synopsis = "A binary serialisation library for Haskell values.";
      description = "This package (formerly @binary-serialise-cbor@) provides pure, efficient\nserialization of Haskell values directly into @ByteString@s for storage or\ntransmission purposes. By providing a set of type class instances, you can\nalso serialise any custom data type you have as well.\n\nThe underlying binary format used is the 'Concise Binary Object\nRepresentation', or CBOR, specified in RFC 7049. As a result,\nserialised Haskell values have implicit structure outside of the\nHaskell program itself, meaning they can be inspected or analyzed\nwithout custom tools.\n\nAn implementation of the standard bijection between CBOR and JSON is provided\nby the [cborg-json](/package/cborg-json) package. Also see\n[cbor-tool](/package/cbor-tool) for a convenient command-line utility for\nworking with CBOR data.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."cborg" or (buildDepError "cborg"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."half" or (buildDepError "half"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ] ++ (if flags.newtime15
          then [ (hsPkgs."time" or (buildDepError "time")) ]
          else [
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            ]);
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."cborg" or (buildDepError "cborg"))
            (hsPkgs."serialise" or (buildDepError "serialise"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        };
      benchmarks = {
        "instances" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."cborg" or (buildDepError "cborg"))
            (hsPkgs."serialise" or (buildDepError "serialise"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            ] ++ (if flags.newtime15
            then [ (hsPkgs."time" or (buildDepError "time")) ]
            else [
              (hsPkgs."time" or (buildDepError "time"))
              (hsPkgs."old-locale" or (buildDepError "old-locale"))
              ]);
          };
        "micro" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."cborg" or (buildDepError "cborg"))
            (hsPkgs."serialise" or (buildDepError "serialise"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."cereal-vector" or (buildDepError "cereal-vector"))
            (hsPkgs."store" or (buildDepError "store"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            ];
          };
        "versus" = {
          depends = [
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."cborg" or (buildDepError "cborg"))
            (hsPkgs."serialise" or (buildDepError "serialise"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."half" or (buildDepError "half"))
            (hsPkgs."tar" or (buildDepError "tar"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."store" or (buildDepError "store"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            ] ++ (if flags.newtime15
            then [ (hsPkgs."time" or (buildDepError "time")) ]
            else [
              (hsPkgs."time" or (buildDepError "time"))
              (hsPkgs."old-locale" or (buildDepError "old-locale"))
              ]);
          };
        };
      };
    }