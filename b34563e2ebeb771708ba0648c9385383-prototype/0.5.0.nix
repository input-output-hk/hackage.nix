{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "prototype";
          version = "0.5.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
        author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
        homepage = "";
        url = "";
        synopsis = "prototype-based programming on Haskell";
        description = "prototype-based programming on Haskell\n\nYou can download source codes by git.\n\ngit clone git:\\/\\/github.com\\/YoshikuniJujo\\/prototype.git prototype\n\nExample code\n\n> module Main where\n>\n> import Control.Prototype\n>\n> main :: IO ()\n> main = fmap fst \$ flip runProt initProtEnv \$ do\n>\t( dog, setName, sit ) <- package \"dog\" \$ do\n>\t\tdog <- clone object\n>\t\tname\t<- makeMember \"name\"\n>\t\tsetName\t<- makeMember \"setName\"\n>\t\tsit\t<- makeMember \"sit\"\n>\t\tsetMethod dog setName \$ \\this [ n ] -> do\n>\t\t\tsetMember this name n\n>\t\t\treturn [ ]\n>\t\tsetMethod dog sit \$ \\this _ -> do\n>\t\t\tn <- member this name\n>\t\t\tliftProt \$ putStrLn \$ fromPrimStr n ++ \" sitting.\"\n>\t\t\treturn [ ]\n>\t\treturn ( dog, setName, sit )\n>\tmyDog <- clone dog\n>\tmethod myDog setName [ primStr \"John\" ]\n>\tmethod myDog sit [ ]\n>\treturn ()\n\nAnother sample\n\n> module Main where\n>\n> import MyToolkit\n>\n> main :: IO ()\n> main = runToolKit \$ do\n>\t( textView, setText, setContentView ) <- importMyToolkit\n>\tmyTV <- clone textView\n>\tmethod myTV setText [ primStr \"Hello, world!\" ]\n>\tmethod myTV setContentView [ ]\n>\treturn ()";
        buildType = "Simple";
      };
      components = {
        prototype = {
          depends  = [
            hsPkgs.base
            hsPkgs.monads-tf
          ];
        };
      };
    }