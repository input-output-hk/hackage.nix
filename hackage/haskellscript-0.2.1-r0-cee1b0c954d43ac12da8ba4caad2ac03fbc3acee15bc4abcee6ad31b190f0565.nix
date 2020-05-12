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
      specVersion = "1.10";
      identifier = { name = "haskellscript"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2015 Sean Parsons";
      maintainer = "github@futurenotfound.com";
      author = "Sean Parsons";
      homepage = "http://github.com/seanparsons/haskellscript/";
      url = "";
      synopsis = "Command line tool for running Haskell scripts with a hashbang.";
      description = "This tool provides the ability to script in a shell with Haskell (including dependencies) the same way that has been possible with bash scripts or Python.\n\n/Examples/\n\nPrint out JSON constructed with Aeson\n\n<https://github.com/seanparsons/haskellscript/blob/master/Example.hs>\n\n/Prerequisites/\n\nA sandbox capable install of [Cabal](https://www.haskell.org/cabal/)\n\n/Howto/\n\nThe script falls into three main parts:\n\n* The hashbang first line:\n\n> #!/usr/bin/env haskellscript\n\n* Dependencies (potentially including versions):\n\n> --#aeson\n\n* The code:\n\n> import Data.Aeson\n> import Data.ByteString.Lazy hiding (putStrLn, unpack)\n> import Data.Text\n> import Data.Text.Encoding\n> jsonExample = object [\"Test\" .= True, \"Example\" .= True]\n> main = putStrLn \$ unpack \$ decodeUtf8 \$ toStrict \$ encode jsonExample\n\nNote that because the dependencies specified are hashed to enable re-use it's worth specifying\nexact versions across multiple scripts to prevent the version used being quite old after a while.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "haskellscript" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
            ];
          buildable = true;
          };
        };
      };
    }