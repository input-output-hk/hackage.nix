{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "SciFlow";
        version = "0.1.0";
      };
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
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.data-default-class)
          (hsPkgs.mtl)
          (hsPkgs.shelly)
          (hsPkgs.text)
          (hsPkgs.template-haskell)
          (hsPkgs.unordered-containers)
          (hsPkgs.yaml)
        ];
      };
    };
  }