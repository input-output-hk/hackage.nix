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
      specVersion = "2.0";
      identifier = { name = "planet-mitchell"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018, Mitchell Rosen";
      maintainer = "Mitchell Rosen <mitchellwrosen@gmail.com>";
      author = "Mitchell Rosen";
      homepage = "https://github.com/mitchellwrosen/planet-mitchell";
      url = "";
      synopsis = "Planet Mitchell";
      description = "Planet Mitchell.\n\nThis package provides a curated, highly unstable collection of reorganized\nre-exports. Mostly for personal use at the moment, me but please poke around\nand see README.md for a bit more information ;)\n\nA note on module names:\n\n/Partial/ means the module contains partial functions that may throw\nexceptions if preconditions are violated.\n\n/Unsafe/ means the module contains unsafe functions that either:\n\n* assume that preconditions hold, e.g. @unsafeEmailAddress@, which constructs\nan @EmailAddress@ from a @ByteString@ that is assumed to be valid.\n\n* do other suspicious things like interleave @IO@ with evaluation, as\n@unsafePerformIO@, or lie to the type checker, as @unsafeCoerce@. In a word,\ndragons.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base-orphans" or (buildDepError "base-orphans"))
          (hsPkgs."aeson-pretty" or (buildDepError "aeson-pretty"))
          (hsPkgs."aeson-qq" or (buildDepError "aeson-qq"))
          (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
          (hsPkgs."approximate" or (buildDepError "approximate"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."atomic-primops" or (buildDepError "atomic-primops"))
          (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
          (hsPkgs."bits" or (buildDepError "bits"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."bytestring-lexing" or (buildDepError "bytestring-lexing"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          (hsPkgs."cborg" or (buildDepError "cborg"))
          (hsPkgs."comonad" or (buildDepError "comonad"))
          (hsPkgs."compact" or (buildDepError "compact"))
          (hsPkgs."compactable" or (buildDepError "compactable"))
          (hsPkgs."constraints" or (buildDepError "constraints"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."contravariant" or (buildDepError "contravariant"))
          (hsPkgs."contravariant-extras" or (buildDepError "contravariant-extras"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."Diff" or (buildDepError "Diff"))
          (hsPkgs."distributive" or (buildDepError "distributive"))
          (hsPkgs."dlist" or (buildDepError "dlist"))
          (hsPkgs."double-conversion" or (buildDepError "double-conversion"))
          (hsPkgs."Earley" or (buildDepError "Earley"))
          (hsPkgs."email-validate" or (buildDepError "email-validate"))
          (hsPkgs."erf" or (buildDepError "erf"))
          (hsPkgs."exact-pi" or (buildDepError "exact-pi"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."extra" or (buildDepError "extra"))
          (hsPkgs."fast-digits" or (buildDepError "fast-digits"))
          (hsPkgs."fgl" or (buildDepError "fgl"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."foldl" or (buildDepError "foldl"))
          (hsPkgs."free" or (buildDepError "free"))
          (hsPkgs."generic-aeson" or (buildDepError "generic-aeson"))
          (hsPkgs."generic-lens" or (buildDepError "generic-lens"))
          (hsPkgs."half" or (buildDepError "half"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."heaps" or (buildDepError "heaps"))
          (hsPkgs."ilist" or (buildDepError "ilist"))
          (hsPkgs."insert-ordered-containers" or (buildDepError "insert-ordered-containers"))
          (hsPkgs."integer-logarithms" or (buildDepError "integer-logarithms"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."lens-aeson" or (buildDepError "lens-aeson"))
          (hsPkgs."list-transformer" or (buildDepError "list-transformer"))
          (hsPkgs."logict" or (buildDepError "logict"))
          (hsPkgs."managed" or (buildDepError "managed"))
          (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
          (hsPkgs."mmorph" or (buildDepError "mmorph"))
          (hsPkgs."monad-ste" or (buildDepError "monad-ste"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."multiset" or (buildDepError "multiset"))
          (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
          (hsPkgs."neat-interpolation" or (buildDepError "neat-interpolation"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."network-info" or (buildDepError "network-info"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."nf" or (buildDepError "nf"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."parallel" or (buildDepError "parallel"))
          (hsPkgs."parser-combinators" or (buildDepError "parser-combinators"))
          (hsPkgs."pointed" or (buildDepError "pointed"))
          (hsPkgs."prettyprinter" or (buildDepError "prettyprinter"))
          (hsPkgs."prettyprinter-ansi-terminal" or (buildDepError "prettyprinter-ansi-terminal"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."profunctors" or (buildDepError "profunctors"))
          (hsPkgs."psqueues" or (buildDepError "psqueues"))
          (hsPkgs."random-bytestring" or (buildDepError "random-bytestring"))
          (hsPkgs."reactive-banana" or (buildDepError "reactive-banana"))
          (hsPkgs."reflection" or (buildDepError "reflection"))
          (hsPkgs."regex-applicative" or (buildDepError "regex-applicative"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."say" or (buildDepError "say"))
          (hsPkgs."scientific" or (buildDepError "scientific"))
          (hsPkgs."semigroupoids" or (buildDepError "semigroupoids"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."semilattices" or (buildDepError "semilattices"))
          (hsPkgs."serialise" or (buildDepError "serialise"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."stm-chans" or (buildDepError "stm-chans"))
          (hsPkgs."stm-containers" or (buildDepError "stm-containers"))
          (hsPkgs."stringsearch" or (buildDepError "stringsearch"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."text-metrics" or (buildDepError "text-metrics"))
          (hsPkgs."text-short" or (buildDepError "text-short"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
          (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"))
          (hsPkgs."typed-process" or (buildDepError "typed-process"))
          (hsPkgs."unagi-chan" or (buildDepError "unagi-chan"))
          (hsPkgs."unique" or (buildDepError "unique"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."unliftio" or (buildDepError "unliftio"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."uuid" or (buildDepError "uuid"))
          (hsPkgs."uuid-types" or (buildDepError "uuid-types"))
          (hsPkgs."vault" or (buildDepError "vault"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."vector-builder" or (buildDepError "vector-builder"))
          (hsPkgs."writer-cps-mtl" or (buildDepError "writer-cps-mtl"))
          ];
        };
      };
    }