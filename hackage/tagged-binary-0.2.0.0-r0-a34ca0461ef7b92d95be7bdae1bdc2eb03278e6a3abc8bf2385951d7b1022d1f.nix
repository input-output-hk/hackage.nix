{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "tagged-binary";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "Copyright (c) Justin Le 2014";
      maintainer = "Justin Le <justin@jle.im>";
      author = "Justin Le <justin@jle.im>";
      homepage = "";
      url = "";
      synopsis = "Provides tools for serializing data tagged with type\ninformation.";
      description = "Very minimal library providing tools for serializing and\ndecoding data into 'ByteString' tagged with information\nabout its type, inspired by Cloud Haskell and\ndistributed-process.\n\nIntended for use by libraries and frameworks in\ndistributed contexts, such as distributed computation\nbetween native servers and communication between native\nservers and ghcjs/various front-ends, for behavior\nsimilar to the polymorphic communication channels of\nCloud Haskell and distributed-process; servers can send\ntagged data, and clients can choose to selectively\naccept, ignore or queue incoming messages depending on\ntheir types.\n\nFor basic encoding, decoding and categorization, only\n'Data.Binary.Tagged' should be necessary.\n'Data.Binary.Tagged.Internal' is exported in case you\nneed it.\n\nQuick example:\n\n> > let x = encodeTagged (1 :: Int)\n> > decodeTagged x :: Maybe Bool\n> Nothing\n> > decodeTagged x :: Maybe Int\n> Just 1";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.pureMD5)
        ];
      };
    };
  }