{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ghcjs-websockets";
          version = "0.3.0.1";
        };
        license = "MIT";
        copyright = "Copyright (c) Justin Le 2015";
        maintainer = "Justin Le <justin@jle.im>";
        author = "Justin Le <justin@jle.im>";
        homepage = "http://github.com/mstksg/ghcjs-websockets";
        url = "";
        synopsis = "GHCJS interface for the Javascript Websocket API";
        description = "Documentation online at\n<http://mstksg.github.io/ghcjs-websockets/JavaScript-WebSockets.html>\n\n'ghcjs-websockets' aims to provide a clean, idiomatic,\nefficient, low-level, out-of-your-way, bare bones,\nconcurrency-aware interface with minimal abstractions\nover the Javascript Websockets API\n<http://www.w3.org/TR/websockets/>,\ninspired by common Haskell idioms found in libraries like\n'io-stream'\n<http://hackage.haskell.org/package/io-streams> and the\nserver-side 'websockets'\n<http://hackage.haskell.org/package/websockets> library,\ntargeting compilation to Javascript with 'ghcjs'.\n\nThe interface asbtracts websockets as simple IO/file\nhandles, with additional access to the natively \"typed\"\n(text vs binary) nature of the Javascript Websockets API.\nThere are also convenience functions to directly decode\nserialized data (serialized with 'binary'\n<http://hackage.haskell.org/package/binary>) sent through\nchannels.\n\nThe library is mostly intended to be a low-level FFI\nlibrary, with the hopes that other, more advanced\nlibraries maybe build on the low-level FFI bindings in\norder to provide more advanced and powerful abstractions.\nMost design decisions were made with the intent of\nkeeping things as simple as possible in order for future\nlibraries to abstract over it.\n\nMost of the necessary functionality is in hopefully in\n'JavaScript.WebSockets'; more of the low-level API is\nexposed in 'JavaScript.WebSockets.Internal' if you need\nit for library construction.\n\nSee the 'JavaScript.WebSockets' module for detailed usage\ninstructions and examples.\n\nSome examples:\n\n> import Data.Text (unpack)\n>\n> -- A simple echo client, echoing all incoming text data\n> main :: IO ()\n> main = withUrl \"ws://my-server.com\" \$ \\conn ->\n>     forever \$ do\n>         t <- receiveText conn\n>         putStrLn (unpack t)\n>         sendText conn t\n\n> -- A simple client waiting for connections and outputting the running sum\n> main :: IO ()\n> main = withUrl \"ws://my-server.com\" (runningSum 0)\n>\n> runningSum :: Int -> Connection -> IO ()\n> runningSum n conn = do\n>     i <- receiveData conn\n>     print (n + i)\n>     runningSum (n + i) conn\n\n> -- Act as a relay between two servers\n> main :: IO ()\n> main = do\n>     conn1 <- openConnection \"ws://server-1.com\"\n>     conn2 <- openConnection \"ws://server-2.com\"\n>     forever \$ do\n>         msg <- receiveMessage conn1\n>         sendMessage conn2 msg\n>     closeConnection conn2\n>     closeConnection conn1";
        buildType = "Simple";
      };
      components = {
        "ghcjs-websockets" = {
          depends  = [
            hsPkgs.base
            hsPkgs.base64-bytestring
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.ghcjs-base
            hsPkgs.text
          ];
        };
      };
    }