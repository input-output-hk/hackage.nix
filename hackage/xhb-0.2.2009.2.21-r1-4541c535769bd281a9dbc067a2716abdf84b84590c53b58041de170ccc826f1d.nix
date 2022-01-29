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
      specVersion = "1.2";
      identifier = { name = "xhb"; version = "0.2.2009.2.21"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Antoine Latter <aslatter@gmail.com>";
      author = "See CONTRIBUTORS file";
      homepage = "http://community.haskell.org/~aslatter/code/xhb";
      url = "";
      synopsis = "X Haskell Bindings";
      description = "Provides low-level bindings to the X11 protocol.\n\nSimilar to XCB - the X C Bindings.\n\nThis library is based on version 1.4 of the xcb-proto\npackage.  See http:\\/\\/xcb.freedesktop.org\\/XmlXcb\\/ and\nhttp:\\/\\/xcb.freedesktop.org\\/dist\\/ .";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."Xauth" or (errorHandler.buildDepError "Xauth"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."byteorder" or (errorHandler.buildDepError "byteorder"))
          ];
        buildable = true;
        };
      };
    }