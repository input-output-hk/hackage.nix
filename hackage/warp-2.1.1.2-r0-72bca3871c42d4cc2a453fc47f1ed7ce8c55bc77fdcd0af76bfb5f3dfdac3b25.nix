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
    flags = { network-bytestring = false; allow-sendfilefd = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "warp"; version = "2.1.1.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman, Kazu Yamamoto, Matt Brown";
      homepage = "http://github.com/yesodweb/wai";
      url = "";
      synopsis = "A fast, light-weight web server for WAI applications.";
      description = "The premier WAI handler. For more information, see <http://steve.vinoski.net/blog/2011/05/01/warp-a-haskell-web-server/>.\n\nChangelog\n\n[2.1.0] The @onOpen@ and @onClose@ settings now provide the @SockAddr@ of the client, and @onOpen@ can return a @Bool@ which will close the connection. The @responseRaw@ response has been added, which provides a more elegant way to handle WebSockets than the previous @settingsIntercept@. The old settings accessors have been deprecated in favor of new setters, which will allow settings changes to be made in the future without breaking backwards compatibility.\n\n[2.0.0] ResourceT is not used anymore. Request and Response is now abstract data types. To use their constructors, Internal module should be imported.\n\n[1.3.9] Support for byte range requests.\n\n[1.3.7] Sockets now have FD_CLOEXEC set on them. This behavior is more secure, and the change should not affect the vast majority of use cases. However, it appeared that this is buggy and is fixed in 2.0.0.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."blaze-builder-conduit" or (errorHandler.buildDepError "blaze-builder-conduit"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."network-conduit" or (errorHandler.buildDepError "network-conduit"))
          (hsPkgs."simple-sendfile" or (errorHandler.buildDepError "simple-sendfile"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
          (hsPkgs."void" or (errorHandler.buildDepError "void"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          ] ++ (if flags.network-bytestring
          then [
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."network-bytestring" or (errorHandler.buildDepError "network-bytestring"))
            ]
          else [
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ])) ++ (pkgs.lib).optional ((system.isLinux || system.isFreebsd || system.isOsx) && flags.allow-sendfilefd) (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))) ++ (if system.isWindows
          then [
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            ]
          else [
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."http-date" or (errorHandler.buildDepError "http-date"))
            ]);
        buildable = true;
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            ];
          buildable = true;
          };
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
            (hsPkgs."blaze-builder-conduit" or (errorHandler.buildDepError "blaze-builder-conduit"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
            (hsPkgs."network-conduit" or (errorHandler.buildDepError "network-conduit"))
            (hsPkgs."simple-sendfile" or (errorHandler.buildDepError "simple-sendfile"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
            (hsPkgs."void" or (errorHandler.buildDepError "void"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            ] ++ (pkgs.lib).optionals ((system.isLinux || system.isFreebsd || system.isOsx) && flags.allow-sendfilefd) [
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."http-date" or (errorHandler.buildDepError "http-date"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "parser" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ];
          buildable = true;
          };
        };
      };
    }