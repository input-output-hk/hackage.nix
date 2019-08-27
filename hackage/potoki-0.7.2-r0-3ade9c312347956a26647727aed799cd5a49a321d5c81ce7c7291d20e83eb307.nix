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
      specVersion = "1.10";
      identifier = { name = "potoki"; version = "0.7.2"; };
      license = "MIT";
      copyright = "(c) 2017, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/potoki";
      url = "";
      synopsis = "Simple streaming in IO";
      description = "This library provides a new simpler approach to the IO-streaming problem.\n\nIn difference to libraries like \\\"pipes\\\", \\\"conduit\\\", \\\"streaming\\\",\nthis library is specialised to streaming in the IO monad,\nwhich greatly simplifies the abstractions that it provides.\nThis simplification is motivated by the fact that the majority of streaming\ntasks are performed in IO anyway.\n\nAlso, unlike the mentioned libraries,\n\\\"potoki\\\" API doesn't treat streaming as a side operation in its abstractions,\nwhich allows it to express the composition of streams using the standard\ntypeclass instances, thus simplifying the API even further.\n\nNaturally, being simpler limits the application area of this library.\nThus it is not capable of transforming custom context monads and etc.\nIt is a tradeoff, but, as we expect, the user will rarely be affected by it.\n\nAnother benefit of being specialized to IO is the ability to optimize for performance better.\nIt must however be mentioned that this is only theoretical and no benchmarks have yet been performed.\n\nIn some of the mentioned regards \\\"potoki\\\" is similar to the \\\"io-streams\\\" library.\nHowever, unlike that library it approaches composition with the standard typeclass instances.\nAlso, in difference to \\\"io-streams\\\", \\\"potoki\\\" doesn't use exceptions for control-flow.\nIn fact, \\\"potoki\\\" doesn't use exceptions whatsoever,\ninstead it makes failures explicit, using the standard @Either@ type.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base-prelude" or (buildDepError "base-prelude"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."foldl" or (buildDepError "foldl"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."potoki-core" or (buildDepError "potoki-core"))
          (hsPkgs."profunctors" or (buildDepError "profunctors"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."unagi-chan" or (buildDepError "unagi-chan"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."potoki" or (buildDepError "potoki"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."rerebase" or (buildDepError "rerebase"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            ];
          };
        };
      };
    }