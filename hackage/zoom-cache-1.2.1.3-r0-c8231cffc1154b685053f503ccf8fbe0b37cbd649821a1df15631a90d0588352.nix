{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "zoom-cache"; version = "1.2.1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "conrad@metadecks.org";
      author = "Conrad Parker";
      homepage = "";
      url = "";
      synopsis = "A streamable, seekable, zoomable cache file format";
      description = "zoom-cache is a fairly simple data file format for storing and summarizing\nstreams of time-series data. The purpose of this format is to make it easy\nto quickly generate plots; /zooming/ refers to being able to render a\nwindow of data, and being able to quickly change the bounds of the window:\nto move around and to zoom in and out.\n\nThis library provides a monadic writing and an iteratee reading interface\nfor zoom-cache files. To build GUI applications, see the scope package:\n\n<http://hackage.haskell.org/package/scope>\n\nWhat's neat about the zoom-cache format and library? Glad you asked!\n\n* Data can be stored at variable or constant rates. For variable rate\ndata, a timestamp is explicitly written into the file for every value,\nwhich is useful for recording events that occur at unpredictable times.\nConstant rate is useful for regularly sampled data, like most digital\naudio and video recordings.\n\n* While writing a file, summary blocks (such as minimum, maximum,\nmean and RMS values) are written out every n samples. The summary blocks\nare hierarchical, such that after two have been written, a new one\ncontaining a merged summary of those is written. After two of those Level\n1 summary blocks have been written, a new Level 2 summary block combining\nthose is written, and so on.\n\n* You can write your own zoom-cache codecs for custom data types, or\nto implement custom summary functions. In order to do so you provide a\n'Summary' data type, functions for encoding and decoding raw data values\nand summaries, and a function for merging 'Summary' blocks. For details,\nsee \"Data.ZoomCache.Codec\".\n\n* Writing of raw data blocks is optional, under control of the\napplication. If you already have the raw data stored in an easily\naccessible format, your zoom-cache files may just contain the summary\ndata. On the other hand, if your input data is the result of expensive\ncalculations you may want to store it along with the summary data so that\nplots of any level of detail can be rendered from a single file.\n\nWhen developing applications that read or write zoom-cache files, it should\nbe sufficient to import only the module \"Data.ZoomCache\".\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."iteratee" or ((hsPkgs.pkgs-errors).buildDepError "iteratee"))
          (hsPkgs."iteratee-compress" or ((hsPkgs.pkgs-errors).buildDepError "iteratee-compress"))
          (hsPkgs."ListLike" or ((hsPkgs.pkgs-errors).buildDepError "ListLike"))
          (hsPkgs."MonadCatchIO-transformers" or ((hsPkgs.pkgs-errors).buildDepError "MonadCatchIO-transformers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."type-level" or ((hsPkgs.pkgs-errors).buildDepError "type-level"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"))
          ] ++ [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "zoom-cache" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."iteratee" or ((hsPkgs.pkgs-errors).buildDepError "iteratee"))
            (hsPkgs."iteratee-compress" or ((hsPkgs.pkgs-errors).buildDepError "iteratee-compress"))
            (hsPkgs."ListLike" or ((hsPkgs.pkgs-errors).buildDepError "ListLike"))
            (hsPkgs."MonadCatchIO-transformers" or ((hsPkgs.pkgs-errors).buildDepError "MonadCatchIO-transformers"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."type-level" or ((hsPkgs.pkgs-errors).buildDepError "type-level"))
            (hsPkgs."ui-command" or ((hsPkgs.pkgs-errors).buildDepError "ui-command"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"))
            ];
          buildable = true;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
            (hsPkgs."iteratee" or ((hsPkgs.pkgs-errors).buildDepError "iteratee"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."type-level" or ((hsPkgs.pkgs-errors).buildDepError "type-level"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."zoom-cache" or ((hsPkgs.pkgs-errors).buildDepError "zoom-cache"))
            ];
          buildable = true;
          };
        };
      };
    }