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
      identifier = { name = "haskellscript"; version = "0.2.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2015 Sean Parsons";
      maintainer = "github@futurenotfound.com";
      author = "Sean Parsons";
      homepage = "http://github.com/seanparsons/haskellscript/";
      url = "";
      synopsis = "Command line tool for running Haskell scripts with a hashbang.";
      description = "This tool provides the ability to script in a shell with Haskell (including dependencies) the same way that has been possible with bash scripts or Python.\n\n/Examples/\n\nPrint out JSON constructed with Aeson\n\n<https://github.com/seanparsons/haskellscript/blob/master/Example.hs>\n\nLookup weather for your current IP address\n\n<https://github.com/seanparsons/haskellscript/blob/master/WeatherExample.hs>\n\n/Prerequisites/\n\nA sandbox capable install of [Cabal](https://www.haskell.org/cabal/).\n\n/Howto/\n\nThe script falls into three main parts:\n\n* The hashbang first line:\n\n> #!/usr/bin/env haskellscript\n\n* Dependencies (potentially including versions):\n\n> --#aeson\n\n* The code:\n\n> import Data.Aeson\n> import Data.ByteString.Lazy hiding (putStrLn, unpack)\n> import Data.Text\n> import Data.Text.Encoding\n> jsonExample = object [\"Test\" .= True, \"Example\" .= True]\n> main = putStrLn \$ unpack \$ decodeUtf8 \$ toStrict \$ encode jsonExample\n\nNote that because the dependencies specified are hashed to enable re-use it's worth specifying\nexact versions across multiple scripts to prevent the version used being quite old after a while.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "haskellscript" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."either" or (buildDepError "either"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
            ];
          };
        };
      };
    }