{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "prototype"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      homepage = "";
      url = "";
      synopsis = "prototype-based programming on Haskell";
      description = "prototype-based programming on Haskell\n\nYou can download source codes by git.\n\ngit clone git:\\/\\/github.com\\/YoshikuniJujo\\/prototype.git prototype\n\nExample code\n\n> module Main where\n>\n> import Control.Prototype\n>\n> main :: IO ()\n> main = fmap fst $ flip runPT initPTEnv $ do\n>\tdog <- clone object\n>\tname\t<- makeMember \"name\"\n>\tsetName\t<- makeMember \"setName\"\n>\tsit\t<- makeMember \"sit\"\n>\tsetMethod dog setName $ \\this [ n ] -> do\n>\t\tsetMember this name n\n>\t\treturn [ ]\n>\tsetMethod dog sit $ \\this _ -> do\n>\t\tn <- member this name\n>\t\tliftPT $ putStrLn $ fromPrimStr n ++ \" sitting.\"\n>\t\treturn [ ]\n>\tmyDog <- clone dog\n>\tmethod myDog setName [ primStr \"John\" ]\n>\tmethod myDog sit [ ]\n>\treturn ()\n\nAnother sample\n\n> module Main where\n>\n> import MyToolkit\n>\n> main :: IO ()\n> main = runToolKit $ do\n>\t( textView, setText, setContentView ) <- importMyToolkit\n>\tmyTV <- clone textView\n>\tmethod myTV setText [ primStr \"Hello, world!\" ]\n>\tmethod myTV setContentView [ ]\n>\treturn ()";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."monads-tf" or (errorHandler.buildDepError "monads-tf"))
        ];
        buildable = true;
      };
    };
  }