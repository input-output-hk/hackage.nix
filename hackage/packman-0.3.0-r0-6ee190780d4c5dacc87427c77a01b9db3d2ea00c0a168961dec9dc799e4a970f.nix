{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { debug = false; };
    package = {
      specVersion = "1.18";
      identifier = {
        name = "packman";
        version = "0.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jost.berthold@gmail.com";
      author = "Michael Budde, Ásbjørn V. Jøkladal, Jost Berthold";
      homepage = "";
      url = "";
      synopsis = "Serialization library for GHC";
      description = "This package provides Haskell data serialisation independent of evaluation,\nby accessing the Haskell heap using foreign primitive operations.\nAny Haskell data structure  apart from mutable data structures (@MVar@s\nand @TVar@s) can be serialised and later deserialised during the same run,\nor loaded into a new run, of the same program (the same executable file).\n\nThe library provides operations to @serialize@ Haskell heap data,\nand to @deserialize@ it:\n\n> trySerializeWith :: a -> Int -> IO (Serialized a) -- Int is maximum buffer size to use\n> trySerialize :: a -> IO (Serialized a)            -- uses default (maximum) buffer size\n> deserialize :: Serialized a -> IO a\n\nThe data type @Serialized a@ is an opaque representation of serialised\nHaskell data (it contains a @ByteArray@).\nA phantom type @a@ ensures type safety within the same program run.\nType @a@ can be polymorphic (at compile time, that is) when @Serialized a@\nis not used apart from being argument to @deserialize@.\nWhen data are externalised (written to disk or communicated over the\nnetwork) using the provided instances of @Binary@ or @Read@ and @Show@,\n@a@ needs to be monomorphic because they require @Typeable@ context.\nThe instances for @Show@ and @Read@ satisfy @read . show == id@.\n\nPackman serialisation is /orthogonal/ to evaluation, heap data are\nserialised /in their current state of evaluation/, they might be entirely\nunevaluated (a thunk) or only partially evaluated (containing thunks).\nTherefore, there can be cases where a mutable data structure is captured by\na thunk, and lead to serialisation failures (typically related to lazy I/O).\n\nThe serialisation routine will throw a @PackException@ if an error occurs\ninside the C code which accesses the Haskell heap, if a mutable data\nstructure is serialised, or if the serialised data is too large.\nIn presence of concurrent threads, another thread might be evaluating\ndata /referred to/ by the data to be serialised. In this case, the calling\nthread will /block/ on the ongoing evaluation and continue when evaluated\ndata is available.\nInternally, there is a @PackException@ @P_BLACKHOLE@ to signal the\ncondition, but it is hidden inside the core library";
      buildType = "Simple";
    };
    components = {
      "packman" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.array)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.primitive)
        ];
      };
      tests = {
        "simpletest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.ghc-prim)
            (hsPkgs.array)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.primitive)
            (hsPkgs.packman)
          ];
        };
        "testexceptions" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.ghc-prim)
            (hsPkgs.array)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.primitive)
            (hsPkgs.Cabal)
            (hsPkgs.packman)
          ];
        };
        "alltests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.ghc-prim)
            (hsPkgs.array)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.primitive)
            (hsPkgs.Cabal)
            (hsPkgs.packman)
          ];
        };
        "testmthread" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.ghc-prim)
            (hsPkgs.array)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.primitive)
            (hsPkgs.Cabal)
            (hsPkgs.packman)
          ];
        };
        "quickchecktest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.ghc-prim)
            (hsPkgs.array)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.primitive)
            (hsPkgs.Cabal)
            (hsPkgs.QuickCheck)
            (hsPkgs.packman)
          ];
        };
      };
    };
  }