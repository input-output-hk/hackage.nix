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
      identifier = { name = "tasty-integrate"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jfeltz@gmail.com";
      author = "John P. Feltz";
      homepage = "";
      url = "";
      synopsis = "automated integration of QuickCheck properties into tasty suites";
      description = "This brings automated test-suite creation (such as what naturally\noccurs in Eclipse) to the Haskell world. This is a set of programs to automate\nthe otherwise manual editing needed to combine new tests (QuickCheck) into\ntest-groupings (tasty test framework).\n\nGiven a set of Modules containing properties:\n\n> \$ ls tests/Data/*\n> QcIntegrated.hs  QcModulePath.hs  QcSuite.hs\n\nExample use on a suite already importing the Modules above:\n\n> \$ tasty-integrate --masking test-suites/Suites.hs tests/Data/QcIntegrated.hs\n> (changed) suite at: test-suites/Suite.hs\n> with:\n>  added:\n>   none\n>  removed:\n>    Data.QcModulePath, 2 property(s)\n>    Data.QcSuite, 1 property(s)\n>  modified:\n>   none\n>  unmodified:\n>    Data.QcIntegrated, 3 property(s)\n\nThe created suites are IDE parsable, and errors can resolve to their original file.\nSo using the provided ide-format program from this package:\n\n> \$ ./build/dist/suite/suite | ide-format\n> tests/Data/QcSuite.hs|20 error | buf_isomorphism\n>   *** Failed! Falsifiable (after 1 test):";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ide-format" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        "tasty-integrate" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            (hsPkgs."language-haskell-extract" or (buildDepError "language-haskell-extract"))
            (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
            (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."either" or (buildDepError "either"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            ];
          };
        };
      tests = {
        "suite" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
            (hsPkgs."quickcheck-property-comb" or (buildDepError "quickcheck-property-comb"))
            (hsPkgs."stringbuilder" or (buildDepError "stringbuilder"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
            (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          };
        };
      };
    }