{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "streaming-bytestring"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "what_is_it_to_do_anything@yahoo.com";
      author = "michaelt";
      homepage = "";
      url = "";
      synopsis = "Effectful sequences of bytes.";
      description = "This is an implementation of effectful, monadic bytestrings,\nadequate for non-lazy-io.\n\nInteroperation with @pipes@ uses this isomorphism:\n\n> Streaming.unfoldrChunks Pipes.next :: Monad m => Producer ByteString m r -> ByteString m r\n> Pipes.unfoldr Streaming.nextChunk  :: Monad m => ByteString m r -> Producer ByteString m r\n\nInteroperation with @io-streams@ is thus:\n\n> IOStreams.unfoldM Streaming.unconsChunk :: ByteString IO () -> IO (InputStream ByteString)\n> Streaming.reread IOStreams.read         :: InputStream ByteString -> ByteString IO ()\n\nand similarly for other streaming io libraries.\n\nThe implementation follows the\ndetails of @Data.ByteString.Lazy@ and @Data.ByteString.Lazy.Char8@\nas far as is possible, substituting the type\n\n> data ByteString m r = Empty r\n>                     | Chunk Strict.ByteString (ByteString m r)\n>                     | Go (m (ByteString m r))\n\nfor the type\n\n> data ByteString = Empty\n>                 | Chunk Strict.ByteString ByteString\n\nfound in @Data.ByteString.Lazy.Internal@. (Constructors are necessarily hidden in\ninternal modules in both cases.) As a lazy bytestring is implemented internally\nby a sort of list of strict bytestring chunks, a streaming bytestring is\nimplemented as a /producer/ or /generator/ of strict bytestring chunks.\n\nSomething like this alteration of type is of course obvious and mechanical, once the idea of\nan effectful bytestring type is contemplated and lazy io is rejected.\nIndeed it seems that this is the proper expression of what was\nintended by lazy bytestrings to begin with. The documentation, after all,\nreads\n\n* \\\"A key feature of lazy ByteStrings is the means to manipulate large or\nunbounded streams of data without requiring the entire sequence to be\nresident in memory. To take advantage of this you have to write your\nfunctions in a lazy streaming style, e.g. classic pipeline composition.\nThe default I/O chunk size is 32k, which should be good in most circumstances.\\\"\n\n... which is very much the idea of this library: the default chunk size for\n'hGetContents' and the like follows @Data.ByteString.Lazy@ and operations\nlike @lines@ and @append@ and so on are tailored not to increase chunk size.\n\nIt is natural to think that\nthe direct, naive, monadic formulation of such a type\nwould necessarily make things much slower. This appears to be a prejudice.\nFor example, passing a large file of short lines through\nthis benchmark transformation\n\n> Lazy.unlines      . map    (\\bs -> \"!\"       <> Lazy.drop 5 bs)       . Lazy.lines\n> Streaming.unlines . S.maps (\\bs -> chunk \"!\" >> Streaming.drop 5 bs)  . Streaming.lines\n\ngives pleasing results like these\n\n> \$  time ./benchlines lazy >> /dev/null\n> real\t0m2.097s\n> ...\n> \$  time ./benchlines streaming >> /dev/null\n> real\t0m1.930s\n\nMore typical, perhaps, are the results for the more\nsophisticated operation\n\n> Lazy.intercalate \"!\\n\"      . Lazy.lines\n> Streaming.intercalate \"!\\n\" . Streaming.lines\n\n> time ./benchlines lazy >> /dev/null\n> real\t0m1.250s\n> ...\n> time ./benchlines streaming >> /dev/null\n> real\t0m1.531s\n\nThe pipes environment (to which this library basically belongs)\nwould express the latter as\n\n> Pipes.intercalates (Pipes.yield \"!\\n\") . view Pipes.lines\n\nmeaning almost exactly what we mean above, but with results like this\n\n>  time ./benchlines pipes >> /dev/null\n>  real\t0m6.353s\n\nThe difference, I think, is mostly that this library depends\nthe @streaming@ library, which is used in place of @free@ to\nexpress the splitting and division of byte streams.\n\nIndeed even if I unwrap and re-wrap with the above-mentioned isomorphism\n\n> Pipes.unfoldr Streaming.nextChunk . Streaming.intercalate \"!\\n\" . Streaming.lines . Streaming.unfoldrChunks Pipe.next\n\nI get an excellent speed-up:\n\n> \$  time ./benchlines pipes_stream >> /dev/null\n> real\t0m3.393s\n\nThough we barely alter signatures in @Data.ByteString.Lazy@\nmore than is required\nby the types, the point of view that emerges is very much that of\n@pipes-bytestring@ and @pipes-group@. In particular\nwe have the correspondences\n\n> Lazy.splitAt      :: Int -> ByteString              -> (ByteString, ByteString)\n> Streaming.splitAt :: Int -> ByteString m r          -> ByteString m (ByteString m r)\n> Pipes.splitAt     :: Int -> Producer ByteString m r -> Producer ByteString m (Producer ByteString m r)\n\nand\n\n> Lazy.lines      :: ByteString -> [ByteString]\n> Streaming.lines :: ByteString m r -> Stream (ByteString m) m r\n> Pipes.lines     :: Producer ByteString m r -> FreeT (Producer ByteString m) m r\n\nwhere the @Stream@ type expresses the sequencing of @ByteString m _@ layers\nwith the usual \\'free monad\\' sequencing.\n\nIf you are unfamiliar with this\nway of structuring material you might take a look at the tutorial for\n<http://hackage.haskell.org/package/pipes-group-1.0.2/docs/Pipes-Group-Tutorial.html pipes-group>\nand the examples in the documentation for the streaming library. See also\n<https://gist.github.com/michaelt/6c6843e6dd8030e95d58 these>\nimplementations of the shell-like examples from the @io-streams@ tutorial.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.syb)
          (hsPkgs.mtl)
          (hsPkgs.mmorph)
          (hsPkgs.attoparsec)
          (hsPkgs.transformers)
          (hsPkgs.foldl)
          (hsPkgs.streaming)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          ];
        };
      };
    }