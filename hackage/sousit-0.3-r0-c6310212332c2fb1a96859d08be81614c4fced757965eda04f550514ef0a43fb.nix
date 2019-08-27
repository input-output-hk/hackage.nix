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
      identifier = { name = "sousit"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 Mario Siegenthaler";
      maintainer = "msiegenthaler@inventsoft.ch";
      author = "Mario Siegenthaler";
      homepage = "https://github.com/msiegenthaler/SouSiT";
      url = "";
      synopsis = "Source/Sink/Transform: An alternative to lazy IO and iteratees.";
      description = "Haskell library for Sources, Sinks and Transformers.\nThe data is pushed from the source through the transfomers into the sink. The sink or a transfomer can decide at any time to end the transfer (see Iteratees).\nThe transformers are very reusable since they can not depend on side effects, so they can be used with files as well as with simple lists.\n\nAllows you to build pipelines such as:\n\n>>> listSource [1..10] \$\$ T.map(+1) =\$= T.buffer 3 0 (+) =\$ listSink\n[9,18,27,11]\n\nits possible to mix various type of sources and sinks, such as in:\n\n>>> fileSourceLine \\\"myfile.txt\\\" \$\$ T.drop 1 =\$= T.map (++ \"!\") =\$ listSink\n[\\\"Hello Mario!\\\", \\\"How're you doing?!\\\"]\n\nFor more documentation see <https://github.com/msiegenthaler/SouSiT>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          ];
        };
      tests = {
        "sousit-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."sousit" or (buildDepError "sousit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            ];
          };
        };
      };
    }