{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      debug = true;
      nohandles = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "conduit";
          version = "0.5.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "http://github.com/snoyberg/conduit";
        url = "";
        synopsis = "Streaming data processing library.";
        description = "@conduit@ is a solution to the streaming data problem, allowing for production, transformation, and consumption of streams of data in constant memory. It is an alternative to lazy I\\/O which guarantees deterministic resource handling, and fits in the same general solution space as @enumerator@/@iteratee@ and @pipes@. For a brief tutorial, please see the \"Data.Conduit\" module.\n\nRelease history:\n\n[0.5] The internals of the package are now separated to the .Internal module, leaving only the higher-level interface in the advertised API. Internally, switched to a @Leftover@ constructor and slightly tweaked the finalization semantics.\n\n[0.4] Inspired by the design of the pipes package: we now have a single unified type underlying @Source@, @Sink@, and @Conduit@. This type is named @Pipe@. There are type synonyms provided for the other three types. Additionally, @BufferedSource@ is no longer provided. Instead, the connect-and-resume operator, @\$\$+@, can be used for the same purpose.\n\n[0.3] ResourceT has been greatly simplified, specialized for IO, and moved into a separate package. Instead of hard-coding ResourceT into the conduit datatypes, they can now live around any monad. The Conduit datatype has been enhanced to better allow generation of streaming output. The SourceResult, SinkResult, and ConduitResult datatypes have been removed entirely.\n\n[0.2] Instead of storing state in mutable variables, we now use CPS. A @Source@ returns the next @Source@, and likewise for @Sink@s and @Conduit@s. Not only does this take better advantage of GHC\\'s optimizations (about a 20% speedup), but it allows some operations to have a reduction in algorithmic complexity from exponential to linear. This also allowed us to remove the @Prepared@ set of types. Also, the @State@ functions (e.g., @sinkState@) use better constructors for return types, avoiding the need for a dummy state on completion.\n\n[0.1] @BufferedSource@ is now an abstract type, and has a much more efficient internal representation. The result was a 41% speedup on microbenchmarks (note: do not expect speedups anywhere near that in real usage). In general, we are moving towards @BufferedSource@ being a specific tool used internally as needed, but using @Source@ for all external APIs.\n\n[0.0] Initial release.";
        buildType = "Simple";
      };
      components = {
        conduit = {
          depends  = [
            hsPkgs.base
            hsPkgs.resourcet
            hsPkgs.lifted-base
            hsPkgs.transformers-base
            hsPkgs.monad-control
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.void
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.conduit
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.bytestring
              hsPkgs.transformers
              hsPkgs.text
              hsPkgs.resourcet
              hsPkgs.void
            ];
          };
        };
      };
    }