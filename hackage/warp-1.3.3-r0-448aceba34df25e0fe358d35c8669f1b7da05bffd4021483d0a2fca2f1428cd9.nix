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
    flags = { network-bytestring = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "warp"; version = "1.3.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman, Kazu Yamamoto, Matt Brown";
      homepage = "http://github.com/yesodweb/wai";
      url = "";
      synopsis = "A fast, light-weight web server for WAI applications.";
      description = "The premier WAI handler. For more information, see <http://steve.vinoski.net/blog/2011/05/01/warp-a-haskell-web-server/>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
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
            ])) ++ (pkgs.lib).optionals (system.isLinux || system.isFreebsd || system.isOsx) [
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          ];
        buildable = true;
        };
      };
    }