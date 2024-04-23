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
      specVersion = "1.8";
      identifier = { name = "xml-push"; version = "0.0.0.11"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      homepage = "https://github.com/YoshikuniJujo/xml-push/wiki";
      url = "";
      synopsis = "Push XML from/to client to/from server over XMPP or HTTP";
      description = "examples/TestSimple.hs\n\nextensions\n\n* ScopedTypeVariables\n\n> module TestSimple (testSimple) where\n>\n> import Control.Monad\n> import Control.Concurrent\n> import Data.Maybe\n> import Data.Pipe\n> import Data.Pipe.ByteString\n> import System.IO\n> import Text.XML.Pipe\n> import Network.XmlPush\n> import Network.XmlPush.Simple\n>\n> testSimple :: Handle -> IO ()\n> testSimple h = do\n> \t(sp :: SimplePusher Handle) <- generate (One h) ()\n> \tvoid . forkIO . runPipe_ $ readFrom sp\n> \t\t=$= convert (xmlString . (: []))\n> \t\t=$= toHandle stdout\n> \trunPipe_ $ fromHandle stdin\n> \t\t=$= xmlEvent\n> \t\t=$= convert fromJust\n> \t\t=$= xmlNode []\n> \t\t=$= writeTo sp\n\nexamples/simpleClient\n\n> import Network\n> import TestSimple\n>\n> main :: IO ()\n> main = testSimple =<< connectTo \"localhost\" (PortNumber 54492)\n\nexamples/simpleServer\n\n> import Control.Monad\n> import Control.Concurrent\n> import Network\n>\n> import TestSimple\n>\n> main :: IO ()\n> main = forever . (void . forkIO . testSimple . fst3 =<<) . accept\n> \t=<< listenOn (PortNumber 54492)\n>\n> fst3 :: (a, b, c) -> a\n> fst3 (x, _, _) = x\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."peyotls" or (errorHandler.buildDepError "peyotls"))
          (hsPkgs."simple-pipe" or (errorHandler.buildDepError "simple-pipe"))
          (hsPkgs."xml-pipe" or (errorHandler.buildDepError "xml-pipe"))
          (hsPkgs."handle-like" or (errorHandler.buildDepError "handle-like"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."monads-tf" or (errorHandler.buildDepError "monads-tf"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."xmpipe" or (errorHandler.buildDepError "xmpipe"))
          (hsPkgs."sasl" or (errorHandler.buildDepError "sasl"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."crypto-random" or (errorHandler.buildDepError "crypto-random"))
          (hsPkgs."x509" or (errorHandler.buildDepError "x509"))
          (hsPkgs."x509-store" or (errorHandler.buildDepError "x509-store"))
          (hsPkgs."tighttp" or (errorHandler.buildDepError "tighttp"))
        ];
        buildable = true;
      };
    };
  }