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
    flags = { libev = false; portable = false; gnutls = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "snap-server"; version = "0.4.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "snap@snapframework.com";
      author = "James Sanders, Gregory Collins, Doug Beardsley";
      homepage = "http://snapframework.com/";
      url = "";
      synopsis = "A fast, iteratee-based, epoll-enabled web server for the Snap Framework";
      description = "This is the first developer prerelease of the Snap framework.  Snap is a\nsimple and fast web development framework and server written in Haskell. For\nmore information or to download the latest version, you can visit the Snap\nproject website at <http://snapframework.com/>.\n\nThe Snap HTTP server is a high performance, epoll-enabled, iteratee-based web\nserver library written in Haskell. Together with the @snap-core@ library upon\nwhich it depends, it provides a clean and efficient Haskell programming\ninterface to the HTTP protocol.\n\nHigher-level facilities for building web applications (like user/session\nmanagement, component interfaces, data modeling, etc.) are planned but not\nyet implemented, so this release will mostly be of interest for those who:\n\n* need a fast and minimal HTTP API at roughly the same level of abstraction\nas Java servlets, or\n\n* are interested in contributing to the Snap Framework project.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."attoparsec-enumerator" or (errorHandler.buildDepError "attoparsec-enumerator"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."blaze-builder-enumerator" or (errorHandler.buildDepError "blaze-builder-enumerator"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."bytestring-nums" or (errorHandler.buildDepError "bytestring-nums"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory-tree" or (errorHandler.buildDepError "directory-tree"))
          (hsPkgs."enumerator" or (errorHandler.buildDepError "enumerator"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."MonadCatchIO-transformers" or (errorHandler.buildDepError "MonadCatchIO-transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."murmur-hash" or (errorHandler.buildDepError "murmur-hash"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."snap-core" or (errorHandler.buildDepError "snap-core"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
          (hsPkgs."PSQueue" or (errorHandler.buildDepError "PSQueue"))
          ] ++ (pkgs.lib).optional (!(flags.portable || system.isWindows)) (hsPkgs."unix" or (errorHandler.buildDepError "unix"))) ++ (pkgs.lib).optional (flags.libev) (hsPkgs."hlibev" or (errorHandler.buildDepError "hlibev"));
        libs = (pkgs.lib).optional (flags.gnutls) (pkgs."gnutls" or (errorHandler.sysDepError "gnutls"));
        buildable = true;
        };
      };
    }