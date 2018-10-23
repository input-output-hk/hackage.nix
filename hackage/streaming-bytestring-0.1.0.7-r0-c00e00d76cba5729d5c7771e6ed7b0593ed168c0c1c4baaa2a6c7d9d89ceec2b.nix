{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      use-bytestring-builder = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "streaming-bytestring";
        version = "0.1.0.7";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "what_is_it_to_do_anything@yahoo.com";
      author = "michaelt";
      homepage = "";
      url = "";
      synopsis = "effectful byte steams, or: bytestring io done right";
      description = "This is an implementation of effectful, memory-constrained\nbytestrings (byte streams) and functions for streaming\nbytestring manipulation, adequate for non-lazy-io.\n\nInteroperation with @pipes@ uses this isomorphism:\n\n> Streaming.unfoldrChunks Pipes.next :: Monad m => Producer ByteString m r -> ByteString m r\n> Pipes.unfoldr Streaming.nextChunk  :: Monad m => ByteString m r -> Producer ByteString m r\n\nInteroperation with @io-streams@ is thus:\n\n> IOStreams.unfoldM Streaming.unconsChunk :: ByteString IO () -> IO (InputStream ByteString)\n> Streaming.reread IOStreams.read         :: InputStream ByteString -> ByteString IO ()\n\nand similarly for other rational streaming io libraries.\n\nProblems and questions about the library can be put as issues on\nthe github page, or mailed to the\n<https://groups.google.com/forum/#!forum/haskell-pipes pipes list>.\n\nA tutorial module is in the works;\n<https://gist.github.com/michaelt/6c6843e6dd8030e95d58 here>,\nfor the moment,\nis a sequence of simplified implementations of familiar shell utilities.\nThe same programs are implemented at the end of the excellent\n<http://hackage.haskell.org/package/io-streams-1.3.2.0/docs/System-IO-Streams-Tutorial.html io-streams tutorial>.\nIt is generally much simpler; in some case simpler than what\nyou would write with lazy bytestrings.\n<https://gist.github.com/michaelt/2dcea1ba32562c091357 Here>\nis a simple GET request that returns a byte stream.\n\nThe implementation is idiot-simple; it follows the\ndetails of @Data.ByteString.Lazy@ and @Data.ByteString.Lazy.Char8@\nas far as is possible, replacing the lazy bytestring type:\n\n> data ByteString     = Empty   | Chunk Strict.ByteString ByteString\n\nwith the /minimal/ effectful variant:\n\n> data ByteString m r = Empty r | Chunk Strict.ByteString (ByteString m r) | Go (m (ByteString m r))\n\n(Constructors are necessarily hidden in internal modules in both cases.)\n\nThat's it. As a lazy bytestring is implemented internally\nby a sort of list of strict bytestring chunks, a streaming bytestring is\nsimply implemented as a /producer/ or /generator/ of strict bytestring chunks.\nMost operations are defined by simply adding a line to what we find in\n@Data.ByteString.Lazy@.\n\nSomething like this alteration of type is of course obvious and mechanical, once the idea of\nan effectful bytestring type is contemplated and lazy io is rejected.\nIndeed it seems that this is the proper expression of what was\nintended by lazy bytestrings to begin with. The documentation, after all,\nreads\n\n* \\\"A key feature of lazy ByteStrings is the means to manipulate large or\nunbounded streams of data without requiring the entire sequence to be\nresident in memory. To take advantage of this you have to write your\nfunctions in a lazy streaming style, e.g. classic pipeline composition.\nThe default I/O chunk size is 32k, which should be good in most circumstances.\\\"\n\n... which is very much the idea of this library: the default chunk size for\n'hGetContents' and the like follows @Data.ByteString.Lazy@ and operations\nlike @lines@ and @append@ and so on are tailored not to increase chunk size.\n\nThe present library is thus nothing but /lazy bytestring done right/.\nThe authors of @Data.ByteString.Lazy@ must have supposed that\nthe directly monadic formulation of such their type\nwould necessarily make things slower. This appears to be a prejudice.\nFor example, passing a large file of short lines through\nthis benchmark transformation\n\n> Lazy.unlines      . map    (\\bs -> \"!\"       <> Lazy.drop 5 bs)       . Lazy.lines\n> Streaming.unlines . S.maps (\\bs -> chunk \"!\" >> Streaming.drop 5 bs)  . Streaming.lines\n\ngives pleasing results like these\n\n> \$  time ./benchlines lazy >> /dev/null\n> real\t0m2.097s\n> ...\n> \$  time ./benchlines streaming >> /dev/null\n> real\t0m1.930s\n\nFor a more sophisticated operation like\n\n> Lazy.intercalate \"!\\n\"      . Lazy.lines\n> Streaming.intercalate \"!\\n\" . Streaming.lines\n\nwe get results like these:\n\n> time ./benchlines lazy >> /dev/null\n> real\t0m1.250s\n> ...\n> time ./benchlines streaming >> /dev/null\n> real\t0m1.531s\n\nThe pipes environment would express the latter as\n\n> Pipes.intercalates (Pipes.yield \"!\\n\") . view Pipes.lines\n\nmeaning almost exactly what we mean above, but with results like this\n\n>  time ./benchlines pipes >> /dev/null\n>  real\t0m6.353s\n\nThe difference, however, is emphatically not intrinsic to pipes;\nit is just that\nthis library depends the @streaming@ library, which is used in place\nof @free@ to express the\n<http://www.haskellforall.com/2013/09/perfect-streaming-using-pipes-bytestring.html \"perfectly streaming\">\nsplitting and iterated division or \"chunking\" of byte streams.\n\nThese concepts belong to the ABCs of streaming; @lines@ is just\na textbook example, and it is of course handled correctly in\n@Data.ByteString.Lazy@.\nBut the concepts are catastrophically mishandled in the streaming io libraries\nother than pipes. Already the @enumerator@ and @iteratee@ libraries\nwere completely defeated by @lines@:\nsee e.g. the @enumerator@ implementation of\n<http://hackage.haskell.org/package/enumerator-0.4.20/docs/Data-Enumerator-Text.html#v:splitWhen splitWhen and lines>.\nThis will concatenate strict text forever, if that's what is coming\nin.  The rot spreads from there.\nIt is just a fact that in all of the general streaming io\nframeworks other than pipes,\nit becomes torture to express elementary distinctions\nthat are transparently\nand immediately contained in any idea of streaming whatsoever.\n\nThough we barely alter signatures in @Data.ByteString.Lazy@\nmore than is required  by the types,\nthe point of view that emerges is very much that of\n@pipes-bytestring@ and @pipes-group@. In particular\nwe have these correspondences:\n\n> Lazy.splitAt      :: Int -> ByteString              -> (ByteString, ByteString)\n> Streaming.splitAt :: Int -> ByteString m r          -> ByteString m (ByteString m r)\n> Pipes.splitAt     :: Int -> Producer ByteString m r -> Producer ByteString m (Producer ByteString m r)\n\nand\n\n> Lazy.lines      :: ByteString -> [ByteString]\n> Streaming.lines :: ByteString m r -> Stream (ByteString m) m r\n> Pipes.lines     :: Producer ByteString m r -> FreeT (Producer ByteString m) m r\n\nwhere the @Stream@ type expresses the sequencing of @ByteString m _@ layers\nwith the usual \\'free monad\\' sequencing.\n\nIf you are unfamiliar with this\nway of structuring material you might take a look at the tutorial for\n<http://hackage.haskell.org/package/pipes-group-1.0.2/docs/Pipes-Group-Tutorial.html pipes-group>\nand the examples in the documentation for the streaming library. See also\n<https://gist.github.com/michaelt/6c6843e6dd8030e95d58 simple implementations>\nof the shell-like examples mentioned above. Or, again, put a question on\nthe issues page or to the pipes list.";
      buildType = "Simple";
    };
    components = {
      "streaming-bytestring" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.mtl)
          (hsPkgs.mmorph)
          (hsPkgs.transformers)
          (hsPkgs.streaming)
        ] ++ (if flags.use-bytestring-builder
          then [
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-builder)
          ]
          else [ (hsPkgs.bytestring) ]);
      };
    };
  }