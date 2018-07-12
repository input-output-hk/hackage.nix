{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "zoom-cache";
          version = "0.7.0.0";
        };
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
        "zoom-cache" = {
          depends  = [
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.iteratee
            hsPkgs.iteratee-compress
            hsPkgs.ListLike
            hsPkgs.MonadCatchIO-transformers
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.zlib
          ] ++ [ hsPkgs.base ];
        };
        exes = {
          "zoom-cache" = {
            depends  = [
              hsPkgs.base
              hsPkgs.blaze-builder
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.data-default
              hsPkgs.iteratee
              hsPkgs.iteratee-compress
              hsPkgs.ListLike
              hsPkgs.mtl
              hsPkgs.transformers
              hsPkgs.ui-command
              hsPkgs.zlib
            ];
          };
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.blaze-builder
              hsPkgs.iteratee
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.QuickCheck
              hsPkgs.random
              hsPkgs.transformers
              hsPkgs.zoom-cache
            ];
          };
        };
      };
    }