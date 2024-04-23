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
      identifier = { name = "streaming-utils"; version = "0.1.4.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "what_is_it_to_do_anything@yahoo.com";
      author = "michaelt";
      homepage = "https://github.com/michaelt/streaming-utils";
      url = "";
      synopsis = "Experimental http-client, aeson, attoparsec, zlib and pipes utilities for use with\nthe <http://hackage.haskell.org/package/streaming streaming> and\n<http://hackage.haskell.org/package/streaming-bytestring streaming bytestring> libraries.\nThey generally closely follow similarly named modules in the pipes\n\\'ecosystem\\', using similar function names, where possible.\n\nThus, for example, using the http client module, we might number the lines\nof a remote document thus:\n\n> import Streaming\n> import Streaming.Prelude (with, each)\n> import qualified Streaming.Prelude as S\n> import Data.ByteString.Streaming.HTTP\n> import qualified Data.ByteString.Streaming.Char8 as Q\n>\n> main =  runResourceT $ do\n>    let output = numbers <|> Q.lines (simpleHTTP \"http://lpaste.net/raw/146542\")\n>    Q.putStrLn $ Q.unlines output\n>\n> numbers :: Monad m => Stream (Q.ByteString m) m ()\n> numbers = with (each [1..]) $ \\n -> Q.pack (each (show n ++ \".  \"))\n> -- [\"1. \", \"2. \" ..]\n\nThe memory requirements of this @Prelude@-ish program will not be\naffected by the fact that, say, the third \\'line\\' is 10 terabytes long.\n\nThis package of course heaps together a number of dependencies, as it\nseemed best not to spam hackage with numerous packages. If it seems\nreasonable to detach some of it, please raise an issue on the github page.\n\nQuestions about usage can be raised as issues, or addressed to the\n<https://groups.google.com/forum/#!forum/haskell-pipes pipes list>.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."streaming" or (errorHandler.buildDepError "streaming"))
          (hsPkgs."streaming-bytestring" or (errorHandler.buildDepError "streaming-bytestring"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."network-simple" or (errorHandler.buildDepError "network-simple"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."json-stream" or (errorHandler.buildDepError "json-stream"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."streaming-commons" or (errorHandler.buildDepError "streaming-commons"))
        ];
        buildable = true;
      };
    };
  }