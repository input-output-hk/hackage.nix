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
      identifier = { name = "peyotls"; version = "0.0.0.22"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      homepage = "https://github.com/YoshikuniJujo/peyotls/wiki";
      url = "";
      synopsis = "Pretty Easy YOshikuni-made TLS library";
      description = "Currently implement the TLS1.2 protocol only,\nand support the following cipher suites.\n\n* TLS_RSA_WITH_AES_128_CBC_SHA\n\n* TLS_RSA_WITH_AES_128_CBC_SHA256\n\n* TLS_DHE_RSA_WITH_AES_128_CBC_SHA\n\n* TLS_DHE_RSA_WITH_AES_128_CBC_SHA256\n\n* TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA\n\n* TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256\n\n* TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA\n\n* TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256\n\nimplement the following curves\n\n* SEC p256r1\n\nAnd support client certificate with the following algorithms.\n\n* RSA with SHA256\n\n* ECDSA with SHA256\n\nAnd support secure renegotiation (RFC 5746)\n\nCurrently not implement the following features.\n\n* session resumption (RFC 5077)\n\n* curves other than SEC p256r1\n\nServer sample\n\n* file: examples/simpleServer.hs\n\nlocalhost.key: key file\n\n> -----BEGIN RSA PRIVATE KEY-----\n> ...\n> -----END RSA PRIVATE KEY-----\n\nlocalhost.crt: certificate file\n\n> -----BEGIN CERTIFICATE-----\n> ...\n> -----END CERTIFICATE-----\n\nexamples/simpleServer.hs\n\nextensions\n\n* OverloadedStrings\n\n* PackageImports\n\n> import Control.Applicative\n> import Control.Monad\n> import \"monads-tf\" Control.Monad.State\n> import Control.Concurrent\n> import Data.HandleLike\n> import Network\n> import Network.PeyoTLS.Server\n> import Network.PeyoTLS.ReadFile\n> import \"crypto-random\" Crypto.Random\n>\n> import qualified Data.ByteString as BS\n> import qualified Data.ByteString.Char8 as BSC\n>\n> main :: IO ()\n> main = do\n>\tk <- readKey \"localhost.key\"\n>\tc <- readCertificateChain [\"localhost.crt\"]\n>\tg0 <- cprgCreate <$> createEntropyPool :: IO SystemRNG\n>\tsoc <- listenOn $ PortNumber 443\n>\tvoid . (`runStateT` g0) . forever $ do\n>\t\t(h, _, _) <- liftIO $ accept soc\n>\t\tg <- StateT $ return . cprgFork\n>\t\tliftIO . forkIO . (`run` g) $ do\n>\t\t\tp <- open h [\"TLS_RSA_WITH_AES_128_CBC_SHA\"] [(k, c)]\n>\t\t\t\tNothing\n>\t\t\tdoUntil BS.null (hlGetLine p) >>= liftIO . mapM_ BSC.putStrLn\n>\t\t\thlPut p $ BS.concat [\n>\t\t\t\t\"HTTP/1.1 200 OK\\r\\n\",\n>\t\t\t\t\"Transfer-Encoding: chunked\\r\\n\",\n>\t\t\t\t\"Content-Type: text/plain\\r\\n\\r\\n\",\n>\t\t\t\t\"5\\r\\nHello0\\r\\n\\r\\n\" ]\n>\t\t\thlClose p\n>\n> doUntil :: Monad m => (a -> Bool) -> m a -> m [a]\n> doUntil p rd = rd >>= \\x ->\n>\t(if p x then return . (: []) else (`liftM` doUntil p rd) . (:)) x\n\nClient sample (only show HTTP header)\n\n* file: examples/simpleClient.hs\n\ncacert.pem: self-signed root certificate to validate server\n\n> -----BEGIN CERTIFICATE-----\n> ...\n> -----END CERTIFICATE-----\n\nexamples/simpleClient.hs\n\nextensions\n\n* OverloadedStrings\n\n* PackageImports\n\n> import Control.Applicative\n> import Control.Monad\n> import \"monads-tf\" Control.Monad.Trans\n> import Data.HandleLike\n> import Network\n> import Network.PeyoTLS.ReadFile\n> import Network.PeyoTLS.Client\n> import \"crypto-random\" Crypto.Random\n>\n> import qualified Data.ByteString.Char8 as BSC\n>\n> main :: IO ()\n> main = do\n> \tca <- readCertificateStore [\"cacert.pem\"]\n> \th <- connectTo \"localhost\" $ PortNumber 443\n> \tg <- cprgCreate <$> createEntropyPool :: IO SystemRNG\n> \t(`run` g) $ do\n> \t\tp <- open h [\"TLS_RSA_WITH_AES_128_CBC_SHA\"] [] ca\n> \t\tunless (\"localhost\" `elem` names p) $\n> \t\t\terror \"certificate name mismatch\"\n> \t\thlPut p \"GET / HTTP/1.1 \\r\\n\"\n> \t\thlPut p \"Host: localhost\\r\\n\\r\\n\"\n> \t\tdoUntil BSC.null (hlGetLine p) >>= liftIO . mapM_ BSC.putStrLn\n> \t\thlClose p\n>\n> doUntil :: Monad m => (a -> Bool) -> m a -> m [a]\n> doUntil p rd = rd >>= \\x ->\n> \t(if p x then return . (: []) else (`liftM` doUntil p rd) . (:)) x\n\nClient certificate server\n\n* file: examples/clcertServer.hs\n\n> % diff examples/simpleServer.hs examples/clcertServer.hs\n> 19a20\n> >\tca <- readCertificateStore [\"cacert.pem\"]\n> 27c28\n> <\t\t\t\tNothing\n> ---\n> >\t\t\t\t$ Just ca\n\nClient certificate client (RSA certificate)\n\n* file: examples/clcertClient.hs\n\n> % diff examples/simpleClient.hs examples/clcertClient.hs\n> 15a16,17\n> >\trk <- readKey \"client_rsa.key\"\n> >\trc <- readCertificateChain [\"client_rsa.crt\"]\n> 20c22\n> <\t\tp <- open h [\"TLS_RSA_WITH_AES_128_CBC_SHA\"] [] ca\n> ---\n> >\t\tp <- open h [\"TLS_RSA_WITH_AES_128_CBC_SHA\"] [(rk, rc)] ca\n\nClient certificate client (ECDSA or RSA certificate)\n\n* file: examples/clcertEcdsaClient.hs\n\n> % diff examples/clcertClient.hs examples/clcertEcdsaClient.hs\n> 17a18,19\n> >\tek <- readKey \"client_ecdsa.key\"\n> >\tec <- readCertificateChain [\"client_ecdsa.crt\"]\n> 22c24\n> <\t\tp <- open h [\"TLS_RSA_WITH_AES_128_CBC_SHA\"] [(rk, rc)] ca\n> ---\n> >\t\tp <- open h [\"TLS_RSA_WITH_AES_128_CBC_SHA\"] [(ek, ec), (rk, rc)] ca\n\nECC server (use ECC or RSA depending on client)\n\n* file: examples/eccServer.hs\n\n> % diff examples/simpleServer.hs examples/eccServer.hs\n> 15a16,26\n> > cipherSuites :: [CipherSuite]\n> > cipherSuites = [\n> >       \"TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256\",\n> >       \"TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA\",\n> >       \"TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256\",\n> >       \"TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA\",\n> >       \"TLS_DHE_RSA_WITH_AES_128_CBC_SHA256\",\n> >       \"TLS_DHE_RSA_WITH_AES_128_CBC_SHA\",\n> >       \"TLS_RSA_WITH_AES_128_CBC_SHA256\",\n> >       \"TLS_RSA_WITH_AES_128_CBC_SHA\" ]\n> >\n> 18,19c29,32\n> <       k <- readKey \"localhost.key\"\n> <       c <- readCertificateChain [\"localhost.crt\"]\n> ---\n> >       rk <- readKey \"localhost.key\"\n> >       rc <- readCertificateChain [\"localhost.crt\"]\n> >       ek <- readKey \"localhost_ecdsa.key\"\n> >       ec <- readCertificateChain [\"localhost_ecdsa.crt\"]\n> 26c39\n> <                       p <- open h [\"TLS_RSA_WITH_AES_128_CBC_SHA\"] [(k, c)]\n> ---\n> >                       p <- open h cipherSuites [(rk, rc), (ek, ec)]\n\nECC client (use ECC or RSA depending on server)\n\n* file: examples/eccClient.hs\n\n> % diff examples/simpleClient.hs examples/eccClient.hs\n> 13a14,24\n> > cipherSuites :: [CipherSuite]\n> > cipherSuites = [\n> >       \"TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256\",\n> >       \"TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA\",\n> >       \"TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256\",\n> >       \"TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA\",\n> >       \"TLS_DHE_RSA_WITH_AES_128_CBC_SHA256\",\n> >       \"TLS_DHE_RSA_WITH_AES_128_CBC_SHA\",\n> >       \"TLS_RSA_WITH_AES_128_CBC_SHA256\",\n> >       \"TLS_RSA_WITH_AES_128_CBC_SHA\" ]\n> >\n> 20c31\n> <               p <- open h [\"TLS_RSA_WITH_AES_128_CBC_SHA\"] [] ca\n> ---\n> >               p <- open h cipherSuites [] ca\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."word24" or (errorHandler.buildDepError "word24"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."monads-tf" or (errorHandler.buildDepError "monads-tf"))
          (hsPkgs."asn1-encoding" or (errorHandler.buildDepError "asn1-encoding"))
          (hsPkgs."asn1-types" or (errorHandler.buildDepError "asn1-types"))
          (hsPkgs."pem" or (errorHandler.buildDepError "pem"))
          (hsPkgs."x509" or (errorHandler.buildDepError "x509"))
          (hsPkgs."x509-store" or (errorHandler.buildDepError "x509-store"))
          (hsPkgs."x509-validation" or (errorHandler.buildDepError "x509-validation"))
          (hsPkgs."crypto-numbers" or (errorHandler.buildDepError "crypto-numbers"))
          (hsPkgs."crypto-random" or (errorHandler.buildDepError "crypto-random"))
          (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
          (hsPkgs."crypto-pubkey" or (errorHandler.buildDepError "crypto-pubkey"))
          (hsPkgs."crypto-pubkey-types" or (errorHandler.buildDepError "crypto-pubkey-types"))
          (hsPkgs."cipher-aes" or (errorHandler.buildDepError "cipher-aes"))
          (hsPkgs."bytable" or (errorHandler.buildDepError "bytable"))
          (hsPkgs."handle-like" or (errorHandler.buildDepError "handle-like"))
        ];
        buildable = true;
      };
      tests = {
        "stm-test" = {
          depends = [
            (hsPkgs."peyotls" or (errorHandler.buildDepError "peyotls"))
            (hsPkgs."handle-like" or (errorHandler.buildDepError "handle-like"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."x509" or (errorHandler.buildDepError "x509"))
            (hsPkgs."x509-store" or (errorHandler.buildDepError "x509-store"))
            (hsPkgs."crypto-random" or (errorHandler.buildDepError "crypto-random"))
          ];
          buildable = true;
        };
        "debug-test" = {
          depends = [
            (hsPkgs."peyotls" or (errorHandler.buildDepError "peyotls"))
            (hsPkgs."handle-like" or (errorHandler.buildDepError "handle-like"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."x509" or (errorHandler.buildDepError "x509"))
            (hsPkgs."x509-store" or (errorHandler.buildDepError "x509-store"))
            (hsPkgs."crypto-random" or (errorHandler.buildDepError "crypto-random"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
        "reneg-test" = {
          depends = [
            (hsPkgs."peyotls" or (errorHandler.buildDepError "peyotls"))
            (hsPkgs."handle-like" or (errorHandler.buildDepError "handle-like"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."x509" or (errorHandler.buildDepError "x509"))
            (hsPkgs."x509-store" or (errorHandler.buildDepError "x509-store"))
            (hsPkgs."crypto-random" or (errorHandler.buildDepError "crypto-random"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
        "ci-reneg-test" = {
          depends = [
            (hsPkgs."peyotls" or (errorHandler.buildDepError "peyotls"))
            (hsPkgs."handle-like" or (errorHandler.buildDepError "handle-like"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."x509" or (errorHandler.buildDepError "x509"))
            (hsPkgs."x509-store" or (errorHandler.buildDepError "x509-store"))
            (hsPkgs."crypto-random" or (errorHandler.buildDepError "crypto-random"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
      };
    };
  }