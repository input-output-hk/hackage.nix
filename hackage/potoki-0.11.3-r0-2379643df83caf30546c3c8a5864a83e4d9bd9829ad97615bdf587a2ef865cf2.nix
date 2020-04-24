{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "potoki"; version = "0.11.3"; };
      license = "MIT";
      copyright = "(c) 2017, Metrix.AI";
      maintainer = "Metrix.AI Ninjas <ninjas@metrix.ai>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/metrix-ai/potoki";
      url = "";
      synopsis = "Simple streaming in IO";
      description = "This library provides a new simpler approach to the IO-streaming problem.\n\nIn difference to libraries like \\\"pipes\\\", \\\"conduit\\\", \\\"streaming\\\",\nthis library is specialised to streaming in the IO monad,\nwhich greatly simplifies the abstractions that it provides.\nThis simplification is motivated by the fact that the majority of streaming\ntasks are performed in IO anyway.\n\nAlso, unlike the mentioned libraries,\n\\\"potoki\\\" API doesn't treat streaming as a side operation in its abstractions,\nwhich allows it to express the composition of streams using the standard\ntypeclass instances, thus simplifying the API even further.\n\nNaturally, being simpler limits the application area of this library.\nThus it is not capable of transforming custom context monads and etc.\nIt is a tradeoff, but, as we expect, the user will rarely be affected by it.\n\nAnother benefit of being specialized to IO is the ability to optimize for performance better.\nIt must however be mentioned that this is only theoretical and no benchmarks have yet been performed.\n\nIn some of the mentioned regards \\\"potoki\\\" is similar to the \\\"io-streams\\\" library.\nHowever, unlike that library it approaches composition with the standard typeclass instances.\nAlso, in difference to \\\"io-streams\\\", \\\"potoki\\\" doesn't use exceptions for control-flow.\nIn fact, \\\"potoki\\\" doesn't use exceptions whatsoever,\ninstead it makes failures explicit, using the standard @Either@ type.\n\n\\\"potoki\\\" comes with automated resource-management (acquisition and clean-up),\nconcurrency and buffering features.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base-prelude" or ((hsPkgs.pkgs-errors).buildDepError "base-prelude"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."foldl" or ((hsPkgs.pkgs-errors).buildDepError "foldl"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."potoki-core" or ((hsPkgs.pkgs-errors).buildDepError "potoki-core"))
          (hsPkgs."profunctors" or ((hsPkgs.pkgs-errors).buildDepError "profunctors"))
          (hsPkgs."ptr" or ((hsPkgs.pkgs-errors).buildDepError "ptr"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."unagi-chan" or ((hsPkgs.pkgs-errors).buildDepError "unagi-chan"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."potoki" or ((hsPkgs.pkgs-errors).buildDepError "potoki"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-instances"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."rerebase" or ((hsPkgs.pkgs-errors).buildDepError "rerebase"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        };
      };
    }