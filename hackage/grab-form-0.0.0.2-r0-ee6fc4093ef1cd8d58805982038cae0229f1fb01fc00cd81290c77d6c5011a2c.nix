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
      specVersion = "2.4";
      identifier = { name = "grab-form"; version = "0.0.0.2"; };
      license = "MIT";
      copyright = "2019 Typeclass Consulting, LLC";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Chris Martin";
      homepage = "https://github.com/typeclasses/grab";
      url = "";
      synopsis = "Applicative parsers for form parameter lists";
      description = "@Grab@ is an @Applicative@ for consuming lists of\n(name, value) parameters.\n\n== Example\n\nParser:\n\n> nameStateAndQAs :: Grab EnglishSentence (Text, Text, [QA])\n> nameStateAndQAs =\n>     (,,)\n>         <\$> at \"name\" (only text)\n>         <*> at \"state\" (only text)\n>         <*> at \"security\" (only (natList (only qa)))\n>\n> qa :: Grab EnglishSentence QA\n> qa =\n>     QA\n>         <\$> at \"Q\" (only text)\n>         <*> at \"A\" (only text)\n\nInput:\n\n> name:           Alonzo\n> state:          Montana\n> security[1].Q:  What is your favorite hobby?\n> security[1].A:  watching cars\n> security[2].Q:  What is your oldest sibling's name?\n> security[2].A:  melman\n> security[3].Q:  What was the make and model of your first car?\n> security[3].A:  bmw x5\n\nOutput:\n\n> ( \"Alonzo\"\n> , \"Montana\"\n> , [ QA\n>       { qa_question = \"What is your favorite hobby?\"\n>       , qa_answer = \"watching cars\"\n>       }\n>   , QA\n>       { qa_question = \"What is your oldest sibling's name?\"\n>       , qa_answer = \"melman\"\n>       }\n>   , QA\n>       { qa_question = \"What was the make and model of your first car?\"\n>       , qa_answer = \"bmw x5\"\n>       }\n>   ]\n> )";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."grab" or (buildDepError "grab"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."text" or (buildDepError "text"))
          ];
        };
      tests = {
        "hedgehog" = {
          depends = [
            (hsPkgs."grab-form" or (buildDepError "grab-form"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."hedgehog" or (buildDepError "hedgehog"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      };
    }