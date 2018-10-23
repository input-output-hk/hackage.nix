{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "xml-push";
        version = "0.0.0.14";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      homepage = "https://github.com/YoshikuniJujo/xml-push/wiki";
      url = "";
      synopsis = "Push XML from/to client to/from server over XMPP or HTTP";
      description = "examples/TestSimple.hs\n\nextensions\n\n* ScopedTypeVariables\n\n> module TestSimple (testSimple) where\n>\n> import Control.Monad\n> import Control.Concurrent\n> import Data.Maybe\n> import Data.Pipe\n> import Data.Pipe.ByteString\n> import System.IO\n> import Text.XML.Pipe\n> import Network.XmlPush\n> import Network.XmlPush.Simple\n>\n> testSimple :: Handle -> IO ()\n> testSimple h = do\n> \t(sp :: SimplePusher Handle) <- generate (One h) ()\n> \tvoid . forkIO . runPipe_ \$ readFrom sp\n> \t\t=\$= convert (xmlString . (: []))\n> \t\t=\$= toHandle stdout\n> \trunPipe_ \$ fromHandle stdin\n> \t\t=\$= xmlEvent\n> \t\t=\$= convert fromJust\n> \t\t=\$= xmlNode []\n> \t\t=\$= writeTo sp\n\nexamples/simpleClient\n\n> import Network\n> import TestSimple\n>\n> main :: IO ()\n> main = testSimple =<< connectTo \"localhost\" (PortNumber 54492)\n\nexamples/simpleServer\n\n> import Control.Monad\n> import Control.Concurrent\n> import Network\n>\n> import TestSimple\n>\n> main :: IO ()\n> main = forever . (void . forkIO . testSimple . fst3 =<<) . accept\n> \t=<< listenOn (PortNumber 54492)\n>\n> fst3 :: (a, b, c) -> a\n> fst3 (x, _, _) = x\n";
      buildType = "Simple";
    };
    components = {
      "xml-push" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.peyotls)
          (hsPkgs.simple-pipe)
          (hsPkgs.xml-pipe)
          (hsPkgs.handle-like)
          (hsPkgs.monad-control)
          (hsPkgs.transformers-base)
          (hsPkgs.monads-tf)
          (hsPkgs.bytestring)
          (hsPkgs.xmpipe)
          (hsPkgs.sasl)
          (hsPkgs.random)
          (hsPkgs.uuid)
          (hsPkgs.stm)
          (hsPkgs.crypto-random)
          (hsPkgs.x509)
          (hsPkgs.x509-store)
          (hsPkgs.x509-validation)
          (hsPkgs.tighttp)
        ];
      };
    };
  }