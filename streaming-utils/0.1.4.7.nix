{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "streaming-utils";
          version = "0.1.4.7";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "what_is_it_to_do_anything@yahoo.com";
        author = "michaelt";
        homepage = "https://github.com/michaelt/streaming-utils";
        url = "";
        synopsis = "http, attoparsec, pipes and other utilities for the streaming libraries";
        description = "This package includes http-client, aeson, attoparsec, zlib and pipes utilities for use with\nthe <http://hackage.haskell.org/package/streaming streaming> and\n<http://hackage.haskell.org/package/streaming-bytestring streaming bytestring> libraries.\nThe modules generally closely follow similarly named modules in the pipes\n\\'ecosystem\\', using similar function names, where possible.\n\nThus, for example, using the http client module, we might number the lines\nof a remote document thus:\n\n> import Streaming\n> import Streaming.Prelude (with, each)\n> import qualified Streaming.Prelude as S\n> import Data.ByteString.Streaming.HTTP\n> import qualified Data.ByteString.Streaming.Char8 as Q\n>\n> main =  runResourceT \$ do\n>    let output = numbers <|> Q.lines (simpleHTTP \"http://lpaste.net/raw/146542\")\n>    Q.putStrLn \$ Q.unlines output\n>\n> numbers :: Monad m => Stream (Q.ByteString m) m ()\n> numbers = with (each [1..]) \$ \\n -> Q.pack (each (show n ++ \".  \"))\n> -- [\"1. \", \"2. \" ..]\n\nThe memory requirements of this @Prelude@-ish program will not be\naffected by the fact that, say, the third \\'line\\' is 10 terabytes long.\n\nThis package of course heaps together a number of dependencies, as it\nseemed best not to spam hackage with numerous packages. If it seems\nreasonable to detach some of it, please raise an issue on the github page.\n\nQuestions about usage can be raised as issues, or addressed to the\n<https://groups.google.com/forum/#!forum/haskell-pipes pipes list>.";
        buildType = "Simple";
      };
      components = {
        streaming-utils = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.attoparsec
            hsPkgs.streaming
            hsPkgs.streaming-bytestring
            hsPkgs.bytestring
            hsPkgs.pipes
            hsPkgs.network-simple
            hsPkgs.network
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.aeson
            hsPkgs.json-stream
            hsPkgs.resourcet
            hsPkgs.streaming-commons
          ];
        };
      };
    }