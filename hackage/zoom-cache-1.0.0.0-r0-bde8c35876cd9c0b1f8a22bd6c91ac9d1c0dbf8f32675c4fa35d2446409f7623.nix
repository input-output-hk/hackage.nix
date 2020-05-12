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
    flags = { splitbase = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "zoom-cache"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "conrad@metadecks.org";
      author = "Conrad Parker";
      homepage = "";
      url = "";
      synopsis = "A streamable, seekable, zoomable cache file format";
      description = "zoom-cache is a fairly simple data file format for storing and summarizing\nstreams of time-series data. The purpose of this format is to make it easy\nto quickly generate plots; /zooming/ refers to being able to render a\nwindow of data, and being able to quickly change the bounds of the window:\nto move around and to zoom in and out.\n\nThis library provides a monadic writing and an iteratee reading interface\nfor zoom-cache files.\n\nWhat's neat about this format and library? Glad you asked!\n\n* Data can be stored at variable or constant rates. For variable rate\ndata, a timestamp is explicitly written into the file for every value,\nwhich is useful for recording events that occur at unpredictable times.\nConstant rate is useful for regularly sampled data, like most digital\naudio and video recordings.\n\n* While writing a file, summary blocks (such as minimum, maximum,\nmean and RMS values) are written out every n samples. The summary blocks\nare hierarchical, such that after two have been written, a new one\ncontaining a merged summary of those is written. After two of those Level\n1 summary blocks have been written, a new Level 2 summary block combining\nthose is written, and so on.\n\n* You can write your own zoom-cache codecs for custom data types, or\nto implement custom summary functions. In order to do so you provide a\n'Summary' data type, functions for encoding and decoding raw data values\nand summaries, and a function for merging 'Summary' blocks. For details,\nsee \"Data.ZoomCache.Codec\".\n\n* Writing of raw data blocks is optional, under control of the\napplication. If you already have the raw data stored in an easily\naccessible format, your zoom-cache files may just contain the summary\ndata. On the other hand, if your input data is the result of expensive\ncalculations you may want to store it along with the summary data so that\nplots of any level of detail can be rendered from a single file.\n\nWhen developing applications that read or write zoom-cache files, it should\nbe sufficient to import only the module \"Data.ZoomCache\".\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."iteratee" or (errorHandler.buildDepError "iteratee"))
          (hsPkgs."iteratee-compress" or (errorHandler.buildDepError "iteratee-compress"))
          (hsPkgs."ListLike" or (errorHandler.buildDepError "ListLike"))
          (hsPkgs."MonadCatchIO-transformers" or (errorHandler.buildDepError "MonadCatchIO-transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."type-level" or (errorHandler.buildDepError "type-level"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          ] ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      exes = {
        "zoom-cache" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."iteratee" or (errorHandler.buildDepError "iteratee"))
            (hsPkgs."iteratee-compress" or (errorHandler.buildDepError "iteratee-compress"))
            (hsPkgs."ListLike" or (errorHandler.buildDepError "ListLike"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."type-level" or (errorHandler.buildDepError "type-level"))
            (hsPkgs."ui-command" or (errorHandler.buildDepError "ui-command"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
            ];
          buildable = true;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
            (hsPkgs."iteratee" or (errorHandler.buildDepError "iteratee"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."type-level" or (errorHandler.buildDepError "type-level"))
            (hsPkgs."zoom-cache" or (errorHandler.buildDepError "zoom-cache"))
            ];
          buildable = true;
          };
        };
      };
    }