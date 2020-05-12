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
    flags = { splitbase = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "scope"; version = "0.8.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "conrad@metadecks.org";
      author = "Conrad Parker";
      homepage = "";
      url = "";
      synopsis = "An interactive renderer for plotting time-series data";
      description = "scope is a framework for plotting time-series data, using zoom-cache\nfiles. This package contains the core Scope library; to use it for\ninteractive plotting, you need a rendering backend such as scope-cairo:\n\n<http://hackage.haskell.org/package/scope-cairo>\n\nFor more information about zoom-cache files, see the zoom-cache package:\n\n<http://hackage.haskell.org/package/zoom-cache>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."iteratee" or (errorHandler.buildDepError "iteratee"))
          (hsPkgs."MonadCatchIO-transformers" or (errorHandler.buildDepError "MonadCatchIO-transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."zoom-cache" or (errorHandler.buildDepError "zoom-cache"))
          ] ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }