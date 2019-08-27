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
    flags = { debug = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "pads-haskell"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "karl@cs.tufts.edu";
      author = "Kathleen Fisher and John Launchbury";
      homepage = "http://www.padsproj.org";
      url = "";
      synopsis = "PADS data description language for Haskell";
      description = "Massive amounts of useful data are stored and processed in\nad hoc formats for which common tools like parsers,\nprinters, query engines and format converters are not readily\navailable.  Pads/Haskell is a domain-specific language that\nfacilitates the generation of data processing tools for ad hoc\nformats. Pads/Haskell includes features such as\ndependent, polymorphic and recursive datatypes, which allow\nprogrammers to describe the syntax and semantics of ad hoc data in a\nconcise,  easy-to-read notation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."Glob" or (buildDepError "Glob"))
          (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."haskell-src" or (buildDepError "haskell-src"))
          (hsPkgs."haskell-src-meta" or (buildDepError "haskell-src-meta"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."mainland-pretty" or (buildDepError "mainland-pretty"))
          (hsPkgs."HUnit" or (buildDepError "HUnit"))
          (hsPkgs."byteorder" or (buildDepError "byteorder"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."normaldistribution" or (buildDepError "normaldistribution"))
          (hsPkgs."th-lift" or (buildDepError "th-lift"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        };
      tests = {
        "examples" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."haskell-src" or (buildDepError "haskell-src"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."mainland-pretty" or (buildDepError "mainland-pretty"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."haskell-src-meta" or (buildDepError "haskell-src-meta"))
            (hsPkgs."Glob" or (buildDepError "Glob"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."byteorder" or (buildDepError "byteorder"))
            (hsPkgs."th-lift" or (buildDepError "th-lift"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          };
        };
      };
    }