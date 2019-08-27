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
      identifier = { name = "Allure"; version = "0.4.14"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Mikolaj Konarski <mikolaj.konarski@funktory.com>";
      author = "Andres Loeh, Mikolaj Konarski and others";
      homepage = "http://allureofthestars.com";
      url = "";
      synopsis = "Near-future roguelike game in early development";
      description = "This is an alpha release of Allure of the Stars,\na near-future Sci-Fi roguelike and tactical squad game.\nSee the wiki for design notes and contribute.\n\n<<GameDefinition/screenshot.png>>\n\nPlease see the changelog file for recent improvements\nand the issue tracker for short-term plans. Long term goals\nare high replayability and auto-balancing through procedural\ncontent generation and persistent content modification\nbased on player behaviour.\n\nThe game is written using the LambdaHack roguelike game engine\navailable at <http://hackage.haskell.org/package/LambdaHack>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "Allure" = {
          depends = [
            (hsPkgs."LambdaHack" or (buildDepError "LambdaHack"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."assert-failure" or (buildDepError "assert-failure"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."enummapset-th" or (buildDepError "enummapset-th"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."hsini" or (buildDepError "hsini"))
            (hsPkgs."keys" or (buildDepError "keys"))
            (hsPkgs."miniutter" or (buildDepError "miniutter"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."vector-binary-instances" or (buildDepError "vector-binary-instances"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            ];
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."LambdaHack" or (buildDepError "LambdaHack"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."assert-failure" or (buildDepError "assert-failure"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."enummapset-th" or (buildDepError "enummapset-th"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."hsini" or (buildDepError "hsini"))
            (hsPkgs."keys" or (buildDepError "keys"))
            (hsPkgs."miniutter" or (buildDepError "miniutter"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."vector-binary-instances" or (buildDepError "vector-binary-instances"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            ];
          };
        };
      };
    }