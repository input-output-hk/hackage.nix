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
      specVersion = "1.6";
      identifier = { name = "websockets"; version = "0.1.2.5"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Siniša Biđin";
      maintainer = "Siniša Biđin <sinisa@bidin.cc>";
      author = "Siniša Biđin";
      homepage = "";
      url = "";
      synopsis = "Server-side WebSocket protocol handshake and communication.";
      description = "\nA library for creating WebSocket-capable servers, where the implemented protocol is defined here: <http://is.gd/eSdLB>.\n\nThis library is only tested with Chromium >=7 and Firefox >=4 and is a work in progress.\n\nHow do you use this library? Here's how:\n\n* Get a 'Handle' to your connected client.\n\n* Perform the initial handshake with 'shakeHands' (or 'getRequest' and 'putResponse').\n\n* Send and receive strict bytestrings with 'putFrame' and 'getFrame'.\n\nAnd here's a short example of a server that accepts clients, greets them with a welcome message, checks for disconnects and replies to all messages by echoing them back with an appended meow:\n\n> import Network.WebSockets (shakeHands, getFrame, putFrame)\n> import Network (listenOn, PortID(PortNumber), accept, withSocketsDo)\n> import System.IO (Handle, hClose)\n> import qualified Data.ByteString as B (append, null)\n> import Data.ByteString.UTF8 (fromString) -- this is from utf8-string\n> import Control.Monad (forever)\n> import Control.Concurrent (forkIO)\n>\n> main :: IO ()\n> main = withSocketsDo \$ do\n>   socket <- listenOn (PortNumber 12345)\n>   putStrLn \"Listening on port 12345.\"\n>   forever \$ do\n>     (h, _, _) <- accept socket\n>     forkIO (talkTo h)\n>\n>\n> talkTo :: Handle -> IO ()\n> talkTo h = do\n>   request <- shakeHands h\n>   case request of\n>     Left error -> putStrLn error\n>     Right rqst -> do\n>       putFrame h (fromString \"滴水之恩当以涌泉相报\")\n>       putStrLn \"Shook hands, sent welcome message.\"\n>       talkLoop h\n>\n>   hClose h\n>   putStrLn \"Client quit, closed handle.\"\n>\n>\n> talkLoop :: Handle -> IO ()\n> talkLoop h = do\n>   msg <- getFrame h\n>   if B.null msg\n>      then return ()\n>      else do\n>        putFrame h \$ B.append msg (fromString \", MEOW!\")\n>        talkLoop h\n\nThe example above will suffice if you wish to accept any WebSocket-capable client, regardless of its origin or target. It won't suffice if you have to filter the incoming clients by the contents of their requests. For that, you can use 'getRequest' and 'putResponse', which allow you to inspect the request details /before/ you send back a response, if any.\n\nIf you have any suggestions, bug reports and\\/or fixes, feel free to send them to <mailto:sinisa@bidin.cc>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }