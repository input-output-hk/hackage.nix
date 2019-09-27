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
      identifier = { name = "hspec-test-framework-th"; version = "0.1.0"; };
      license = "MIT";
      copyright = "(c) 2013 Simon Hengel";
      maintainer = "Simon Hengel <sol@typeful.net>";
      author = "";
      homepage = "http://hspec.github.io/";
      url = "";
      synopsis = "Run test-framework tests with Hspec";
      description = "A `test-framework` compatibility layer on top of Hspec, it\nallows you to run `test-framework` tests with Hspec\nunmodified.\n\nAll that is required is to remove\n\n* `test-framework`\n\n* `test-framework-quickcheck2`\n\n* `test-framework-hunit`\n\n* `test-framework-th`\n\nfrom the `build-depends` section of your cabal file and add\n\n* `hspec-test-framework`\n\n* `hspec-test-framework-th`\n\nin theire place.\n\nNOTE: The packages `hspec-test-framework` and\n`hspec-test-framework-th` are hidden by default, so that they\ndo not interfere with an installed version of\n`test-framework`.  If you want to use them with e.g. `ghci`,\nyou have to pass the command-line flags\n@-packagehspec-test-framework -packagehspec-test-framework-th@\nto GHC.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."hspec-test-framework" or (buildDepError "hspec-test-framework"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."language-haskell-extract" or (buildDepError "language-haskell-extract"))
          ];
        buildable = true;
        };
      tests = {
        "example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."hspec-test-framework" or (buildDepError "hspec-test-framework"))
            (hsPkgs."hspec-test-framework-th" or (buildDepError "hspec-test-framework-th"))
            ];
          buildable = true;
          };
        };
      };
    }