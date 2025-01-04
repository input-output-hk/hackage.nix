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
      specVersion = "2.0";
      identifier = { name = "file-embed-lzma"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015-2018 Futurice, 2018 Oleg Grenrus";
      maintainer = "Oleg.Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/phadej/file-embed-lzma";
      url = "";
      synopsis = "Use Template Haskell to embed (LZMA compressed) data.";
      description = "The @file-embed@ package let's embed file and dir contents.\n\nThis package is similar, but also compresses the embedded contents with LZMA.\nThat makes resulting object files smaller, at the cost of start up decompression.\n\nThere's also an 'embedRecursiveDir' function.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."lzma" or (errorHandler.buildDepError "lzma"))
        ];
        buildable = true;
      };
      tests = {
        "example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."file-embed-lzma" or (errorHandler.buildDepError "file-embed-lzma"))
          ];
          buildable = true;
        };
      };
    };
  }