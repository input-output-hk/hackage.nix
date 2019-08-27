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
      specVersion = "1.9.2";
      identifier = { name = "biohazard"; version = "0.6.2"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2010-2015 Udo Stenzel";
      maintainer = "udo.stenzel@eva.mpg.de";
      author = "Udo Stenzel";
      homepage = "http://github.com/udo-stenzel/biohazard";
      url = "";
      synopsis = "bioinformatics support library";
      description = "This is a collection of modules I separated from\nvarious bioinformatics tools.  The hope is to make\nthem reusable and easier to maintain.  Also includes\nsome of these tools and a bunch that work on mitochondrial\nsequences.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."bytestring-mmap" or (buildDepError "bytestring-mmap"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."iteratee" or (buildDepError "iteratee"))
          (hsPkgs."ListLike" or (buildDepError "ListLike"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."scientific" or (buildDepError "scientific"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."Vec" or (buildDepError "Vec"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."vector-algorithms" or (buildDepError "vector-algorithms"))
          (hsPkgs."vector-th-unbox" or (buildDepError "vector-th-unbox"))
          (hsPkgs."zlib" or (buildDepError "zlib"))
          ];
        };
      exes = {
        "afroengineer" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."biohazard" or (buildDepError "biohazard"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."iteratee" or (buildDepError "iteratee"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        "bam-fixpair" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."biohazard" or (buildDepError "biohazard"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        "bam-meld" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."biohazard" or (buildDepError "biohazard"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          };
        "bam-resample" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."biohazard" or (buildDepError "biohazard"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          };
        "bam-rewrap" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."biohazard" or (buildDepError "biohazard"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          };
        "bam-rmdup" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."biohazard" or (buildDepError "biohazard"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."iteratee" or (buildDepError "iteratee"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."vector-algorithms" or (buildDepError "vector-algorithms"))
            ];
          };
        "bam-trim" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."biohazard" or (buildDepError "biohazard"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          };
        "count-coverage" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."biohazard" or (buildDepError "biohazard"))
            (hsPkgs."iteratee" or (buildDepError "iteratee"))
            ];
          };
        "dmg-est" = {
          depends = [
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."biohazard" or (buildDepError "biohazard"))
            (hsPkgs."nonlinear-optimization" or (buildDepError "nonlinear-optimization"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        "fastq2bam" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."biohazard" or (buildDepError "biohazard"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."iteratee" or (buildDepError "iteratee"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        "glf-consensus" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."biohazard" or (buildDepError "biohazard"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."iteratee" or (buildDepError "iteratee"))
            ];
          };
        "gt-call" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."biohazard" or (buildDepError "biohazard"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."iteratee" or (buildDepError "iteratee"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        "jivebunny" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."biohazard" or (buildDepError "biohazard"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."vector-algorithms" or (buildDepError "vector-algorithms"))
            (hsPkgs."vector-th-unbox" or (buildDepError "vector-th-unbox"))
            ];
          };
        "mt-anno" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."biohazard" or (buildDepError "biohazard"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          };
        "mt-ccheck" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."biohazard" or (buildDepError "biohazard"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            ];
          };
        "wiggle-coverage" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."biohazard" or (buildDepError "biohazard"))
            ];
          };
        };
      };
    }