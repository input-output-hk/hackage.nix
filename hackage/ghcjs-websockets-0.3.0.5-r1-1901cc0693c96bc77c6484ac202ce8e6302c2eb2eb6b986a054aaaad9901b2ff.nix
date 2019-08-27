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
    flags = { ghcjs = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ghcjs-websockets"; version = "0.3.0.5"; };
      license = "MIT";
      copyright = "Copyright (c) Justin Le 2015";
      maintainer = "Justin Le <justin@jle.im>";
      author = "Justin Le <justin@jle.im>";
      homepage = "http://github.com/mstksg/ghcjs-websockets";
      url = "";
      synopsis = "Deprecated: use ghcjs-base's native websockets";
      description = "Documentation online at\n<http://mstksg.github.io/ghcjs-websockets/JavaScript-WebSockets.html>\n\nDeprecated in favor of ghcjs-base's native websockets.\n\n'ghcjs-websockets' aims to provide a clean, idiomatic,\nefficient, low-level, out-of-your-way, bare bones,\nconcurrency-aware interface with minimal abstractions\nover the Javascript Websockets API\n<http://www.w3.org/TR/websockets/>,\ninspired by common Haskell idioms found in libraries like\n'io-stream'\n<http://hackage.haskell.org/package/io-streams> and the\nserver-side 'websockets'\n<http://hackage.haskell.org/package/websockets> library,\ntargeting compilation to Javascript with 'ghcjs'.\n\nThe interface asbtracts websockets as simple IO/file\nhandles, with additional access to the natively \"typed\"\n(text vs binary) nature of the Javascript Websockets API.\nThere are also convenience functions to directly decode\nserialized data (serialized with 'binary'\n<http://hackage.haskell.org/package/binary>) sent through\nchannels.\n\nThe library is mostly intended to be a low-level FFI\nlibrary, with the hopes that other, more advanced\nlibraries maybe build on the low-level FFI bindings in\norder to provide more advanced and powerful abstractions.\nMost design decisions were made with the intent of\nkeeping things as simple as possible in order for future\nlibraries to abstract over it.\n\nMost of the necessary functionality is in hopefully in\n'JavaScript.WebSockets'; more of the low-level API is\nexposed in 'JavaScript.WebSockets.Internal' if you need\nit for library construction.\n\nSee the 'JavaScript.WebSockets' module for detailed usage\ninstructions and examples.\n\nSome examples:\n\n> import Data.Text (unpack)\n>\n> -- A simple echo client, echoing all incoming text data\n> main :: IO ()\n> main = withUrl \"ws://my-server.com\" \$ \\conn ->\n>     forever \$ do\n>         t <- receiveText conn\n>         putStrLn (unpack t)\n>         sendText conn t\n\n> -- A simple client waiting for connections and outputting the running sum\n> main :: IO ()\n> main = withUrl \"ws://my-server.com\" (runningSum 0)\n>\n> runningSum :: Int -> Connection -> IO ()\n> runningSum n conn = do\n>     i <- receiveData conn\n>     print (n + i)\n>     runningSum (n + i) conn\n\n> -- Act as a relay between two servers\n> main :: IO ()\n> main = do\n>     conn1 <- openConnection \"ws://server-1.com\"\n>     conn2 <- openConnection \"ws://server-2.com\"\n>     forever \$ do\n>         msg <- receiveMessage conn1\n>         sendMessage conn2 msg\n>     closeConnection conn2\n>     closeConnection conn1";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."text" or (buildDepError "text"))
          ] ++ (pkgs.lib).optional (flags.ghcjs) (hsPkgs."ghcjs-base" or (buildDepError "ghcjs-base"));
        };
      };
    }