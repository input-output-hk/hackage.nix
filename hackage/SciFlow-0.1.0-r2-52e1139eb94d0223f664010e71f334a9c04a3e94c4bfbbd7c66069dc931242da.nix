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
      identifier = { name = "SciFlow"; version = "0.1.0"; };
      license = "MIT";
      copyright = "(c) 2015 Kai Zhang";
      maintainer = "kai@kzhang.org";
      author = "Kai Zhang";
      homepage = "";
      url = "";
      synopsis = "Scientific workflow management system";
      description = "SciFlow is to help programmers design complex workflows\nwith ease.\n\nFeature includes:\n\n1. Use \"labeled\" arrows to connect individual steps\nand cache computational results.\n\n2. Use monad and template haskell to automate the process\nof building DAGs.\n\nHere is a trivial example. Since we use template haskell,\nwe need to divide this small program into two files.\n\n> -- File 1: MyModule.hs\n>\n> module MyModule where\n>\n> import Control.Arrow\n> import Scientific.Workflow\n>\n> input :: Actor () Int\n> input = arr \$ const 10\n>\n> plus1 :: Actor Int Int\n> plus1 = arr (+1)\n>\n> mul2 :: Actor Int Int\n> mul2 = arr (*2)\n>\n> combine :: Actor (Int, Int) Int\n> combine = arr \$ \\(a,b) -> a + b\n>\n> -- builder monad\n> builder :: Builder ()\n> builder = do\n> node \"id000\" \"input\" \"this is input\"\n> node \"id001\" \"plus1\" \"add 1 to the input\"\n> node \"id002\" \"mul2\" \"double the input\"\n> node \"id003\" \"combine\" \"combine two input\"\n>\n> \"id000\" ~> \"id001\"\n> \"id000\" ~> \"id002\"\n> link2 (\"id001\", \"id002\") \"id003\"\n>\n> --------------------------------------------\n> -- File 2: main.hs\n>\n> import Scientific.Workflow\n> import MyModule\n> import Data.Default\n>\n> -- assemble workflow using template haskell\n> \$(mkWorkflow \"myWorkflow\" builder)\n>\n> main = do result <- runWorkflow myWorkflow def\n>           print result";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."shelly" or (buildDepError "shelly"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."yaml" or (buildDepError "yaml"))
          ];
        };
      };
    }