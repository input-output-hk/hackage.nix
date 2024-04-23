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
      identifier = { name = "snap-cors"; version = "1.3.0"; };
      license = "BSD-3-Clause";
      copyright = "Oliver Charles (c) 2013";
      maintainer = "ollie@ocharles.org.uk";
      author = "Oliver Charles";
      homepage = "https://github.com/ocharles/snap-cors";
      url = "";
      synopsis = "Add CORS headers to Snap applications";
      description = "Add CORS (cross-origin resource sharing) headers to Snap applications. This\nenables web applications running on other domains to make requests against\nanother application.\n\nSince version 1.3 this library simply re-exports @Snap.Util.CORS@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."snap-core" or (errorHandler.buildDepError "snap-core"))
        ];
        buildable = true;
      };
    };
  }