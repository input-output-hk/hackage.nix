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
      ffi = false;
      gmp = false;
      release = true;
      freestanding = false;
      ci = false;
      execonly = false;
      };
    package = {
      specVersion = "1.22";
      identifier = { name = "idris"; version = "1.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Edwin Brady <eb@cs.st-andrews.ac.uk>";
      author = "Edwin Brady";
      homepage = "http://www.idris-lang.org/";
      url = "";
      synopsis = "Functional Programming Language with Dependent Types";
      description = "Idris is a general purpose language with full dependent types.\nIt is compiled, with eager evaluation.\nDependent types allow types to be predicated on values,\nmeaning that some aspects of a program's behaviour can be\nspecified precisely in the type. The language is closely\nrelated to Epigram and Agda. There is a tutorial at\n<http://www.idris-lang.org/documentation>.\nFeatures include:\n\n* Full, first class, dependent types with dependent pattern matching\n\n* where clauses, with rule, case expressions,\npattern matching let and lambda bindings\n\n* Interfaces (similar to type classes), monad comprehensions\n\n* do notation, idiom brackets, syntactic conveniences for lists,\ntuples, dependent pairs\n\n* Totality checking\n\n* Coinductive types\n\n* Indentation significant syntax, extensible syntax\n\n* Cumulative universes\n\n* Simple foreign function interface (to C)\n\n* Hugs style interactive environment";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (buildToolDepError "base")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or (buildToolDepError "directory")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or (buildToolDepError "filepath")))
        (hsPkgs.buildPackages.process or (pkgs.buildPackages.process or (buildToolDepError "process")))
        ];
      };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."annotated-wl-pprint" or (buildDepError "annotated-wl-pprint"))
          (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
          (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
          (hsPkgs."blaze-markup" or (buildDepError "blaze-markup"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."cheapskate" or (buildDepError "cheapskate"))
          (hsPkgs."code-page" or (buildDepError "code-page"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."fingertree" or (buildDepError "fingertree"))
          (hsPkgs."haskeline" or (buildDepError "haskeline"))
          (hsPkgs."ieee754" or (buildDepError "ieee754"))
          (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."terminal-size" or (buildDepError "terminal-size"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."uniplate" or (buildDepError "uniplate"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."vector-binary-instances" or (buildDepError "vector-binary-instances"))
          (hsPkgs."zip-archive" or (buildDepError "zip-archive"))
          (hsPkgs."fsnotify" or (buildDepError "fsnotify"))
          (hsPkgs."async" or (buildDepError "async"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."semigroups" or (buildDepError "semigroups"))) ++ (if system.isWindows
          then [
            (hsPkgs."mintty" or (buildDepError "mintty"))
            (hsPkgs."Win32" or (buildDepError "Win32"))
            ]
          else [
            (hsPkgs."unix" or (buildDepError "unix"))
            ])) ++ (pkgs.lib).optional (flags.ffi) (hsPkgs."libffi" or (buildDepError "libffi"))) ++ (pkgs.lib).optional (flags.gmp) (hsPkgs."libffi" or (buildDepError "libffi"));
        libs = (pkgs.lib).optional (flags.gmp) (pkgs."gmp" or (sysDepError "gmp"));
        };
      exes = {
        "idris" = {
          depends = [
            (hsPkgs."idris" or (buildDepError "idris"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."haskeline" or (buildDepError "haskeline"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        "idris-codegen-c" = {
          depends = [
            (hsPkgs."idris" or (buildDepError "idris"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."haskeline" or (buildDepError "haskeline"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        "idris-codegen-javascript" = {
          depends = [
            (hsPkgs."idris" or (buildDepError "idris"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."haskeline" or (buildDepError "haskeline"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        "idris-codegen-node" = {
          depends = [
            (hsPkgs."idris" or (buildDepError "idris"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."haskeline" or (buildDepError "haskeline"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        };
      tests = {
        "regression-and-feature-tests" = {
          depends = [
            (hsPkgs."idris" or (buildDepError "idris"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."haskeline" or (buildDepError "haskeline"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (buildDepError "tasty-golden"))
            (hsPkgs."tasty-rerun" or (buildDepError "tasty-rerun"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        };
      };
    }