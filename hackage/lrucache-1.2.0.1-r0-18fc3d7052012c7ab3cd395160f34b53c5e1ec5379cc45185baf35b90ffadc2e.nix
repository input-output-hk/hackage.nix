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
      specVersion = "1.6";
      identifier = { name = "lrucache"; version = "1.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Carl Howells, 2010-2015";
      maintainer = "chowells79@gmail.com";
      author = "Carl Howells";
      homepage = "http://github.com/chowells79/lrucache";
      url = "";
      synopsis = "a simple, pure LRU cache";
      description = "This package contains a simple, pure LRU cache, implemented in\nterms of \"Data.Map\".\n\nIt also contains a mutable IO wrapper providing atomic updates to\nan LRU cache.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
          ];
        buildable = true;
        };
      };
    }