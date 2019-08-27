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
    flags = { color-output = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "chell"; version = "0.4.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "John Millikin <john@john-millikin.com>";
      author = "John Millikin <john@john-millikin.com>";
      homepage = "https://john-millikin.com/software/chell/";
      url = "";
      synopsis = "A simple and intuitive library for automated testing.";
      description = "Chell is a simple and intuitive library for automated testing. It natively\nsupports assertion-based testing, and can use companion libraries\nsuch as @chell-quickcheck@ to support more complex testing strategies.\n\nAn example test suite, which verifies the behavior of artithmetic operators.\n\n@\n&#x7b;-\\# LANGUAGE TemplateHaskell \\#-&#x7d;\n\nimport Test.Chell\n\ntests_Math :: Suite\ntests_Math = suite \\\"math\\\"\n&#x20;   [ test_Addition\n&#x20;   , test_Subtraction\n&#x20;   ]\n\ntest_Addition :: Test\ntest_Addition = assertions \\\"addition\\\" \$ do\n&#x20;   \$expect (equal (2 + 1) 3)\n&#x20;   \$expect (equal (1 + 2) 3)\n\ntest_Subtraction :: Test\ntest_Subtraction = assertions \\\"subtraction\\\" \$ do\n&#x20;   \$expect (equal (2 - 1) 1)\n&#x20;   \$expect (equal (1 - 2) (-1))\n\nmain :: IO ()\nmain = defaultMain [tests_Math]\n@\n\n@\n\$ ghc --make chell-example.hs\n\$ ./chell-example\nPASS: 2 tests run, 2 tests passed\n@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."options" or (buildDepError "options"))
          (hsPkgs."patience" or (buildDepError "patience"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ] ++ (pkgs.lib).optional (flags.color-output) (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"));
        };
      };
    }