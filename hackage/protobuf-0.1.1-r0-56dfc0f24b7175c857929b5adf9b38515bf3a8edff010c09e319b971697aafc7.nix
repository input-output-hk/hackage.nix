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
        name = "protobuf";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sseverance@alphaheavy.com, nhowell@alphaheavy.com";
      author = "Steve Severance, Nathan Howell";
      homepage = "https://github.com/alphaHeavy/protobuf";
      url = "";
      synopsis = "Google Protocol Buffers via GHC.Generics";
      description = "Google Protocol Buffers via GHC.Generics.\n\nProtocol Buffers are a way of encoding structured data in an efficient yet extensible format.\nGoogle uses Protocol Buffers for almost all of its internal RPC protocols and file formats.\n\nThis library supports a useful subset of Google Protocol Buffers message specifications\nin a Haskell. No preprocessor or additional build steps are required for message encoding and decoding.\n\nRecord specifications are built by defining records with specially defined fields that\ncapture most of the Protocol Buffers specification language.\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.data-binary-ieee754)
          (hsPkgs.deepseq)
          (hsPkgs.ghc-prim)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.type-level)
          (hsPkgs.unordered-containers)
        ];
      };
      exes = {
        "protoc-gen-hs" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.ghc-prim)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.mtl)
            (hsPkgs.protobuf)
            (hsPkgs.text)
            (hsPkgs.type-level)
            (hsPkgs.unordered-containers)
          ];
        };
      };
      tests = {
        "protobuf-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ghc-prim)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.hex)
            (hsPkgs.mtl)
            (hsPkgs.protobuf)
            (hsPkgs.tagged)
            (hsPkgs.text)
            (hsPkgs.type-level)
            (hsPkgs.unordered-containers)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }