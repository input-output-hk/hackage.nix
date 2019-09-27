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
      identifier = { name = "optparse-applicative"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012  Paolo Capriotti <p.capriotti@gmail.com>";
      maintainer = "p.capriotti@gmail.com";
      author = "Paolo Capriotti";
      homepage = "";
      url = "";
      synopsis = "Utilities and combinators for parsing command line options";
      description = "Here is a simple example of an applicative option parser:\n\n@\ndata Sample = Sample\n&#x20; &#x7b; hello :: String\n&#x20; , quiet :: Bool &#x7d;\n\nsample :: Parser Sample\nsample = Sample\n&#x20; \\<\$\\> strOption\n&#x20;     ( long \\\"hello\\\"\n&#x20;     & metavar \\\"TARGET\\\"\n&#x20;     & help \\\"Target for the greeting\\\" )\n&#x20; \\<*\\> switch\n&#x20;     ( long \\\"quiet\\\"\n&#x20;     & help \\\"Whether to be quiet\\\" )\n@\n\nThe parser is built using applicative style starting from a set of basic\ncombinators. In this example, @hello@ is defined as an 'option' with a\n@String@ argument, while @quiet@ is a boolean 'flag' (called 'switch').\n\nA parser can be used like this:\n\n@\ngreet :: Sample -> IO ()\ngreet (Sample h True) = putStrLn \$ \\\"Hello, \\\" ++ h\ngreet _ = return ()\n\nmain :: IO ()\nmain = execParser opts \\>\\>= greet\n&#x20; where\n&#x20;   opts = info (helper \\<*\\> sample)\n&#x20;     ( fullDesc\n&#x20;     & progDesc \\\"Print a greeting for TARGET\\\"\n&#x20;     & header \\\"hello - a test for optparse-applicative\\\" )\n@\n\nThe @greet@ function is the entry point of the program, while @opts@ is a\ncomplete description of the program, used when generating a help text. The\n'helper' combinator takes any parser, and adds a @help@ option to it (which\nalways fails).\n\nThe @hello@ option in this example is mandatory (since it doesn't have a\ndefault value), so running the program without any argument will display a\nhelp text:\n\n>hello - a test for optparse-applicative\n>\n>Usage: hello --hello TARGET [--quiet]\n>  Print a greeting for TARGET\n>\n>Common options:\n>  -h,--help                Show this help text\n>  --hello TARGET           Target for the greeting\n>  --quiet                  Whether to be quiet\n\ncontaining a short usage summary, and a detailed list of options with\ndescriptions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."data-lens" or (buildDepError "data-lens"))
          (hsPkgs."data-lens-template" or (buildDepError "data-lens-template"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-th-prime" or (buildDepError "test-framework-th-prime"))
            ];
          buildable = true;
          };
        };
      };
    }