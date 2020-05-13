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
    flags = { portable = false; debug = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "snap-core"; version = "0.9.5.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "snap@snapframework.com";
      author = "James Sanders, Shu-yu Guo, Gregory Collins, Doug Beardsley";
      homepage = "http://snapframework.com/";
      url = "";
      synopsis = "Snap: A Haskell Web Framework (core interfaces and types)";
      description = "Snap is a simple and fast web development framework and server written in\nHaskell. For more information or to download the latest version, you can\nvisit the Snap project website at <http://snapframework.com/>.\n\nThis library contains the core definitions and types for the Snap framework,\nincluding:\n\n1. Primitive types and functions for HTTP (requests, responses, cookies,\npost/query parameters, etc)\n\n2. Type aliases and helper functions for Iteratee I/O\n\n3. A monad for programming web handlers called \\\"Snap\\\", which allows:\n\n* Stateful access to the HTTP request and response objects\n\n* Monadic failure (i.e. MonadPlus/Alternative instances) for declining\nto handle requests and chaining handlers together\n\n* Early termination of the computation if you know early what you want\nto return and want to prevent further monadic processing\n\n/Quick start/: The 'Snap' monad and HTTP definitions are in \"Snap.Core\",\nsome iteratee utilities are in \"Snap.Iteratee\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."attoparsec-enumerator" or (errorHandler.buildDepError "attoparsec-enumerator"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."blaze-builder-enumerator" or (errorHandler.buildDepError "blaze-builder-enumerator"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."enumerator" or (errorHandler.buildDepError "enumerator"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."MonadCatchIO-transformers" or (errorHandler.buildDepError "MonadCatchIO-transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."zlib-enum" or (errorHandler.buildDepError "zlib-enum"))
          ] ++ (if flags.portable || system.isWindows
          then [
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            ]
          else [
            (hsPkgs."bytestring-mmap" or (errorHandler.buildDepError "bytestring-mmap"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ]);
        buildable = true;
        };
      };
    }