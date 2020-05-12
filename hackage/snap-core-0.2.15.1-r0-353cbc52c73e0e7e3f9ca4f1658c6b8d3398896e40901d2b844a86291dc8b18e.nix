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
    flags = { portable = false; no-debug = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "snap-core"; version = "0.2.15.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "snap@snapframework.com";
      author = "James Sanders, Shu-yu Guo, Gregory Collins, Doug Beardsley";
      homepage = "http://snapframework.com/";
      url = "";
      synopsis = "Snap: A Haskell Web Framework (Core)";
      description = "This is the first developer prerelease of the Snap framework.  Snap is a\nsimple and fast web development framework and server written in Haskell. For\nmore information or to download the latest version, you can visit the Snap\nproject website at <http://snapframework.com/>.\n\nThis library contains the core definitions and types for the Snap framework,\nincluding:\n\n1. Primitive types and functions for HTTP (requests, responses, cookies,\npost/query parameters, etc)\n\n2. Type aliases and helper functions for Iteratee I/O\n\n3. A monad for programming web handlers called \\\"Snap\\\", inspired by\nhappstack's (<http://happstack.com/index.html>), which allows:\n\n* Stateful access to the HTTP request and response objects\n\n* Monadic failure (i.e. MonadPlus/Alternative instances) for declining\nto handle requests and chaining handlers together\n\n* Early termination of the computation if you know early what you want\nto return and want to prevent further monadic processing\n\n/Quick start/: The 'Snap' monad and HTTP definitions are in \"Snap.Types\",\nsome iteratee utilities are in \"Snap.Iteratee\".\n\nHigher-level facilities for building web applications (like user/session\nmanagement, component interfaces, data modeling, etc.) are planned but not\nyet implemented, so this release will mostly be of interest for those who:\n\n* need a fast and minimal HTTP API at roughly the same level of abstraction\nas Java servlets, or\n\n* are interested in contributing to the Snap Framework project.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."bytestring-nums" or (errorHandler.buildDepError "bytestring-nums"))
          (hsPkgs."bytestring-show" or (errorHandler.buildDepError "bytestring-show"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."iteratee" or (errorHandler.buildDepError "iteratee"))
          (hsPkgs."ListLike" or (errorHandler.buildDepError "ListLike"))
          (hsPkgs."MonadCatchIO-transformers" or (errorHandler.buildDepError "MonadCatchIO-transformers"))
          (hsPkgs."monads-fd" or (errorHandler.buildDepError "monads-fd"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          ] ++ (pkgs.lib).optional (!(flags.portable || system.isWindows)) (hsPkgs."bytestring-mmap" or (errorHandler.buildDepError "bytestring-mmap"));
        buildable = true;
        };
      exes = {
        "snap" = {
          depends = [
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."bytestring-nums" or (errorHandler.buildDepError "bytestring-nums"))
            (hsPkgs."bytestring-show" or (errorHandler.buildDepError "bytestring-show"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."directory-tree" or (errorHandler.buildDepError "directory-tree"))
            (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."iteratee" or (errorHandler.buildDepError "iteratee"))
            (hsPkgs."monads-fd" or (errorHandler.buildDepError "monads-fd"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
            ];
          buildable = true;
          };
        };
      };
    }