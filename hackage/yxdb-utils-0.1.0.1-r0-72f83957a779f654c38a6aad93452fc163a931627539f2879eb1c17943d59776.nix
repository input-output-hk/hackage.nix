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
      identifier = { name = "yxdb-utils"; version = "0.1.0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "michael.burge@rentrakmail.com";
      author = "Michael Burge";
      homepage = "";
      url = "";
      synopsis = "Utilities for reading and writing Alteryx .yxdb files";
      description = "Two command-line utilities (csv2yxdb and yxdb2csv) that are used to convert csv files with a specific header line into Alteryx .yxdb files.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."Codec-Compression-LZF" or (buildDepError "Codec-Compression-LZF"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bimap" or (buildDepError "bimap"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."binary-conduit" or (buildDepError "binary-conduit"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."conduit-combinators" or (buildDepError "conduit-combinators"))
          (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."csv-conduit" or (buildDepError "csv-conduit"))
          (hsPkgs."Decimal" or (buildDepError "Decimal"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."newtype" or (buildDepError "newtype"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."reinterpret-cast" or (buildDepError "reinterpret-cast"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."text-binary" or (buildDepError "text-binary"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."xml-conduit" or (buildDepError "xml-conduit"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        };
      exes = {
        "csv2yxdb" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."yxdb-utils" or (buildDepError "yxdb-utils"))
            ];
          };
        "yxdb2csv" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."yxdb-utils" or (buildDepError "yxdb-utils"))
            ];
          };
        };
      tests = {
        "yxdb-tests" = {
          depends = [
            (hsPkgs."Codec-Compression-LZF" or (buildDepError "Codec-Compression-LZF"))
            (hsPkgs."Decimal" or (buildDepError "Decimal"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bimap" or (buildDepError "bimap"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."binary-conduit" or (buildDepError "binary-conduit"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."conduit-combinators" or (buildDepError "conduit-combinators"))
            (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."csv-conduit" or (buildDepError "csv-conduit"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."newtype" or (buildDepError "newtype"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."reinterpret-cast" or (buildDepError "reinterpret-cast"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."text-binary" or (buildDepError "text-binary"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."xml-conduit" or (buildDepError "xml-conduit"))
            ];
          };
        };
      };
    }