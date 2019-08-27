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
      identifier = { name = "streaming-utils"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "chessai1996@gmail.com";
      author = "michaelt";
      homepage = "https://github.com/michaelt/streaming-utils";
      url = "";
      synopsis = "http, attoparsec, pipes and other utilities for the streaming libraries";
      description = "This package includes http-client, aeson, attoparsec, zlib and pipes utilities for use with\nthe <http://hackage.haskell.org/package/streaming streaming> and\n<http://hackage.haskell.org/package/streaming-bytestring streaming bytestring> libraries.\nThe modules generally closely follow similarly named modules in the pipes\n\\'ecosystem\\', using similar function names, where possible.\n\nThus, for example, using the http client module, we might number the lines\nof a remote document thus:\n\n> import Streaming\n> import Streaming.Prelude (with, each)\n> import qualified Streaming.Prelude as S\n> import Data.ByteString.Streaming.HTTP\n> import qualified Data.ByteString.Streaming.Char8 as Q\n>\n> main =  runResourceT \$ do\n>    let output = numbers <|> Q.lines (simpleHTTP \"http://lpaste.net/raw/146542\")\n>    Q.putStrLn \$ Q.unlines output\n>\n> numbers :: Monad m => Stream (Q.ByteString m) m ()\n> numbers = with (each [1..]) \$ \\n -> Q.pack (each (show n ++ \".  \"))\n> -- [\"1. \", \"2. \" ..]\n\nThe memory requirements of this @Prelude@-ish program will not be\naffected by the fact that, say, the third \\'line\\' is 10 terabytes long.\n\nThis package of course heaps together a number of dependencies, as it\nseemed best not to spam hackage with numerous packages. If it seems\nreasonable to detach some of it, please raise an issue on the github page.\n\nQuestions about usage can be raised as issues, or addressed to the\n<https://groups.google.com/forum/#!forum/haskell-pipes pipes list>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."streaming" or (buildDepError "streaming"))
          (hsPkgs."streaming-bytestring" or (buildDepError "streaming-bytestring"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."pipes" or (buildDepError "pipes"))
          (hsPkgs."network-simple" or (buildDepError "network-simple"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."json-stream" or (buildDepError "json-stream"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."streaming-commons" or (buildDepError "streaming-commons"))
          ];
        };
      };
    }