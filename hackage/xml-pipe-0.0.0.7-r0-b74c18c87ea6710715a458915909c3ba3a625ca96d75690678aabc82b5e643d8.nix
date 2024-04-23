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
      identifier = { name = "xml-pipe"; version = "0.0.0.7"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      homepage = "https://github.com/YoshikuniJujo/xml-pipe/wiki";
      url = "";
      synopsis = "XML parser which uses simple-pipe";
      description = "This package process subset of XML and is still far from perfect, now.\n\nExample programs\n\nexamples/indians.hs\n\nextensions\n\n* OverloadedStrings\n\n* PackageImports\n\n> import Control.Monad\n> import \"monads-tf\" Control.Monad.Trans\n> import Data.Maybe\n> import Data.Pipe\n> import Data.Pipe.List\n> import Text.XML.Pipe\n>\n> import qualified Data.ByteString.Char8 as BSC\n>\n> littleIndians :: Int -> BSC.ByteString\n> littleIndians n = \"<indians>\" `BSC.append`\n> \tBSC.pack (show n) `BSC.append` \" little, \" `BSC.append`\n> \tBSC.pack (show $ n + 1) `BSC.append` \" little, \" `BSC.append`\n> \tBSC.pack (show $ n + 2) `BSC.append` \" little Indians\" `BSC.append`\n> \t\"</indians>\"\n>\n> infiniteIndians :: [BSC.ByteString]\n> infiniteIndians = map littleIndians [1, 4 .. ]\n>\n> xml :: [BSC.ByteString]\n> xml = \"<?xml version='1.0'?><song>\" : infiniteIndians\n>\n> main :: IO ()\n> main = void . runPipe $ fromList xml\n> \t=$= xmlEvent\n> \t=$= convert fromJust\n> \t=$= (xmlBegin >>= xmlNode)\n> \t=$= takeP 8\n> \t=$= printP\n>\n> takeP :: Monad m => Int -> Pipe a a m ()\n> takeP 0 = return ()\n> takeP n = do\n> \tmx <- await\n> \tmaybe (return ()) (\\x -> yield x >> takeP (n - 1)) mx\n>\n> convert :: Monad m => (a -> b) -> Pipe a b m ()\n> convert f = do\n> \tmx <- await\n> \tmaybe (return ()) (\\x -> yield (f x) >> convert f) mx\n>\n> printP :: Show a => Pipe a () IO ()\n> printP = do\n> \tmx <- await\n> \tmaybe (return ()) (\\x -> lift (print x) >> printP) mx\n\nexamples/starttls.hs\n\nIt process STARTTLS of XMPP as client.\nThe fllowings are only main part.\n\n> main :: IO ()\n> main = do\n> \th <- connectTo \"localhost\" (PortNumber 5222)\n> \tBS.hPut h $ xmlString begin\n> \tBS.hPut h $ xmlString startTls\n> \tvoid . runPipe $ handleP h\n> \t\t=$= xmlEvent\n> \t\t=$= convert fromJust\n> \t\t=$= (xmlBegin >>= xmlNodeUntil isProceed)\n> \t\t=$= printP\n> \tca <- readCertificateStore [\"cacert.sample_pem\"]\n> \tg <- cprgCreate <$> createEntropyPool :: IO SystemRNG\n> \t(`run` g) $ do\n> \t\tp <- open' h \"localhost\" [\"TLS_RSA_WITH_AES_128_CBC_SHA\"] [] ca\n> \t\thlPut p $ xmlString begin\n> \t\tvoid . runPipe $ handleP p\n> \t\t\t=$= xmlEvent\n> \t\t\t=$= convert fromJust\n> \t\t\t=$= (xmlBegin >>= xmlNode)\n> \t\t\t=$= printP\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."simple-pipe" or (errorHandler.buildDepError "simple-pipe"))
          (hsPkgs."papillon" or (errorHandler.buildDepError "papillon"))
        ];
        buildable = true;
      };
    };
  }