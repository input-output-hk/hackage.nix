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
      specVersion = "1.8";
      identifier = { name = "pdf-toolbox-core"; version = "0.0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Yuras Shumovich 2012-2015";
      maintainer = "Yuras Shumovich <shumovichy@gmail.com>";
      author = "Yuras Shumovich";
      homepage = "https://github.com/Yuras/pdf-toolbox";
      url = "";
      synopsis = "A collection of tools for processing PDF files.";
      description = "Low level tools for processing PDF files.\n\nLevel of abstraction: cross reference, trailer, indirect object, object\n\nThe API is based on random access input streams, and is designed to be memory efficient.\nWe don't need to parse the entire PDF file and store it in memory when you need just one page or two.\nUsually it is also leads to time efficiency, but we don't try optimize performance\nby e.g. maintaining xref or object cache. Higher level layers should take care of it.\n\nThe library is low level. It may mean that you need to be familiar with PDF file internals to\nactually use it.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."io-streams" or (errorHandler.buildDepError "io-streams"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."zlib-bindings" or (errorHandler.buildDepError "zlib-bindings"))
          ];
        buildable = true;
        };
      };
    }