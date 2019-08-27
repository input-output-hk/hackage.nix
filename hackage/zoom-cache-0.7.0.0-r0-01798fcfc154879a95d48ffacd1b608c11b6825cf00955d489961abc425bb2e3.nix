let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "zoom-cache"; version = "0.7.0.0"; };
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
          (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."iteratee" or (buildDepError "iteratee"))
          (hsPkgs."iteratee-compress" or (buildDepError "iteratee-compress"))
          (hsPkgs."ListLike" or (buildDepError "ListLike"))
          (hsPkgs."MonadCatchIO-transformers" or (buildDepError "MonadCatchIO-transformers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."zlib" or (buildDepError "zlib"))
          ] ++ [ (hsPkgs."base" or (buildDepError "base")) ];
        };
      exes = {
        "zoom-cache" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."iteratee" or (buildDepError "iteratee"))
            (hsPkgs."iteratee-compress" or (buildDepError "iteratee-compress"))
            (hsPkgs."ListLike" or (buildDepError "ListLike"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."ui-command" or (buildDepError "ui-command"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            ];
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
            (hsPkgs."iteratee" or (buildDepError "iteratee"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."zoom-cache" or (buildDepError "zoom-cache"))
            ];
          };
        };
      };
    }