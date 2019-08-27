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
    flags = { lib-werror = false; };
    package = {
      specVersion = "1.9.2";
      identifier = { name = "csv-conduit"; version = "0.6.8.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ozgun Ataman <ozataman@gmail.com>";
      author = "Ozgun Ataman";
      homepage = "http://github.com/ozataman/csv-conduit";
      url = "";
      synopsis = "A flexible, fast, conduit-based CSV parser library for Haskell.";
      description = "CSV files are the de-facto standard in many situations involving data transfer,\nparticularly when dealing with enterprise application or disparate database\nsystems.\n\nWhile there are a number of CSV libraries in Haskell, at the time of this\nproject's start in 2010, there wasn't one that provided all of the following:\n\n* Full flexibility in quote characters, separators, input/output\n\n* Constant space operation\n\n* Robust parsing, correctness and error resiliency\n\n* Convenient interface that supports a variety of use cases\n\n* Fast operation\n\nThis library is an attempt to close these gaps. Please note that\nthis library started its life based on the enumerator package and\nhas recently been ported to work with conduits instead. In the\nprocess, it has been greatly simplified thanks to the modular nature\nof the conduits library.\n\nFollowing the port to conduits, the library has also gained the\nability to parameterize on the stream type and work both with\nByteString and Text.\n\nFor more documentation and examples, check out the README at:\n\n<http://github.com/ozataman/csv-conduit>\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."mmorph" or (buildDepError "mmorph"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.2.1") (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"));
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."csv-conduit" or (buildDepError "csv-conduit"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            ];
          };
        };
      };
    }