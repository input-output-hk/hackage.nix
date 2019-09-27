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
      specVersion = "1.2";
      identifier = { name = "prototype"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      homepage = "";
      url = "";
      synopsis = "prototype-based programming on Haskell";
      description = "prototype-based programming on Haskell\n\nYou can download source codes by git.\n\ngit clone git:\\/\\/github.com\\/YoshikuniJujo\\/prototype.git prototype\n\nExample code\n\n> module Main where\n>\n> import Control.Prototype\n>\n> main :: IO ()\n> main = fmap fst \$ flip runPT initPTEnv \$ do\n>\tdog <- clone object\n>\tname\t<- makeMember \"name\"\n>\tsetName\t<- makeMember \"setName\"\n>\tsit\t<- makeMember \"sit\"\n>\tsetMethod dog setName \$ \\this [ n ] -> do\n>\t\tsetMember this name n\n>\t\treturn [ ]\n>\tsetMethod dog sit \$ \\this _ -> do\n>\t\tn <- member this name\n>\t\tliftPT \$ putStrLn \$ fromPrimStr n ++ \" sitting.\"\n>\t\treturn [ ]\n>\tmyDog <- clone dog\n>\tmethod myDog setName [ primStr \"John\" ]\n>\tmethod myDog sit [ ]\n>\treturn ()\n\nAnother sample\n\n> module Main where\n>\n> import MyToolkit\n>\n> main :: IO ()\n> main = runToolKit \$ do\n>\t( textView, setText, setContentView ) <- importMyToolkit\n>\tmyTV <- clone textView\n>\tmethod myTV setText [ primStr \"Hello, world!\" ]\n>\tmethod myTV setContentView [ ]\n>\treturn ()";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."monads-tf" or (buildDepError "monads-tf"))
          ];
        buildable = true;
        };
      };
    }