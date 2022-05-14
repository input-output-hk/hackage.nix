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
      specVersion = "1.10";
      identifier = { name = "buffer-builder"; version = "0.2.4.8"; };
      license = "BSD-3-Clause";
      copyright = "IMVU Inc., Chad Austin, Andy Friesen";
      maintainer = "chad@chadaustin.me";
      author = "Chad Austin, Andy Friesen";
      homepage = "https://github.com/chadaustin/buffer-builder";
      url = "";
      synopsis = "Library for efficiently building up buffers, one piece at a time";
      description = "\"Data.BufferBuilder\" is an efficient library for incrementally building\nup 'ByteString's, one chunk at a time.  Early benchmarks show it\nis over twice as fast as ByteString Builder, primarily because\n'BufferBuilder' is built upon an ST-style restricted monad and\nmutable state instead of ByteString Builder's monoidal AST.\n\nInternally, BufferBuilder is backed by a few C functions.\nExamination of GHC's output shows nearly optimal code generation\nwith no intermediate thunks -- and thus, continuation passing and\nits associated indirect jumps and stack traffic only occur when\nBufferBuilder is asked to append a non-strict ByteString.\n\nI benchmarked four approaches with a URL encoding benchmark:\n\n* State monad, concatenating ByteStrings: 6.98 us\n\n* State monad, ByteString Builder: 2.48 us\n\n* Crazy explicit RealWorld baton passing with unboxed state: 28.94 us (GHC generated really awful code for this, but see the revision history for the technique)\n\n* C + FFI + ReaderT: 1.11 us\n\nUsing BufferBuilder is very simple:\n\n> import qualified Data.BufferBuilder as BB\n>\n> let byteString = BB.runBufferBuilder $ do\n>       BB.appendBS \"http\"\n>       BB.appendChar8 '/'\n>       BB.appendBS \"//\"\n\nThis package also provides \"Data.BufferBuilder.Utf8\" for generating UTF-8 buffers\nand \"Data.BufferBuilder.Json\" for encoding data structures into JSON.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."buffer-builder" or (errorHandler.buildDepError "buffer-builder"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."HTF" or (errorHandler.buildDepError "HTF"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            ];
          buildable = true;
          };
        "tinyjson" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."buffer-builder" or (errorHandler.buildDepError "buffer-builder"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            ];
          buildable = true;
          };
        "tinyjson2" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."buffer-builder" or (errorHandler.buildDepError "buffer-builder"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."buffer-builder" or (errorHandler.buildDepError "buffer-builder"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            ];
          buildable = true;
          };
        "json-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."buffer-builder" or (errorHandler.buildDepError "buffer-builder"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."json-builder" or (errorHandler.buildDepError "json-builder"))
            ];
          buildable = true;
          };
        "url" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."buffer-builder" or (errorHandler.buildDepError "buffer-builder"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }