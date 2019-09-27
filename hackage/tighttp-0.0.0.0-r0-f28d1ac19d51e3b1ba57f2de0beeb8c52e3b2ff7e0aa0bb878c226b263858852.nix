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
      specVersion = "1.8";
      identifier = { name = "tighttp"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      homepage = "https://github.com/YoshikuniJujo/tighttp/wiki";
      url = "";
      synopsis = "Tiny and Incrementally-Growing HTTP library";
      description = "Example programs\n\nexamples/get.hs\n\nThis is simple client.\nThis send GET request and show page source.\nRun as following.\n\n> runhaskell get.hs hackage.haskell.org /packages/\n\nextensions\n\n* PackageImports\n\n> import \"monads-tf\" Control.Monad.Trans\n> import Data.Pipe\n> import System.Environment\n> import Network\n> import Network.TigHTTP.Client\n> import Network.TigHTTP.Types\n>\n> import qualified Data.ByteString as BS\n>\n> main :: IO ()\n> main = do\n> \taddr : pth : _ <- getArgs\n> \th <- connectTo addr \$ PortNumber 80\n> \tr <- request h \$ get addr 80 pth\n> \t_ <- runPipe \$ responseBody r =\$= finally printP (putStrLn \"\")\n> \treturn ()\n>\n> printP :: MonadIO m => Pipe BS.ByteString () m ()\n> printP = await >>= maybe (return ()) (\\s -> liftIO (BS.putStr s) >> printP)\n\nexamples/server.hs\n\nThis is simple server.\nThis recieve client's request.\nAnd send command line arguments as response.\nRun as following.\n\n> runhaskell server.hs Hello World I Am TigHTTP\n\n> import Control.Monad\n> import Control.Concurrent\n> import Data.Pipe\n> import System.IO\n> import System.Environment\n> import Network\n> import Network.TigHTTP.Server\n> import Network.TigHTTP.Types\n>\n> import qualified Data.ByteString.Char8 as BSC\n> import qualified Data.ByteString.Lazy as LBS\n>\n> main :: IO ()\n> main = do\n> \tas <- getArgs\n> \tsoc <- listenOn \$ PortNumber 80\n> \tforever \$ do\n> \t\t(h, _, _) <- accept soc\n> \t\tvoid . forkIO \$ do\n> \t\t\treq <- getRequest h\n> \t\t\tprint \$ requestPath req\n> \t\t\tputResponse h\n>\t\t\t\t. (response :: LBS.ByteString -> Response Pipe Handle)\n>\t\t\t\t. LBS.fromChunks \$ map BSC.pack as\n\nIf you want more examples. Please see examples directory.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."handle-like" or (buildDepError "handle-like"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."monads-tf" or (buildDepError "monads-tf"))
          (hsPkgs."papillon" or (buildDepError "papillon"))
          (hsPkgs."simple-pipe" or (buildDepError "simple-pipe"))
          ];
        buildable = true;
        };
      };
    }