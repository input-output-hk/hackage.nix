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
      specVersion = "1.10";
      identifier = { name = "json-state"; version = "0.1.0.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "♡ Copying is an act of love. Please copy, reuse and share.";
      maintainer = "fr33domlover@riseup.net";
      author = "fr33domlover";
      homepage = "http://rel4tion.org/projects/json-state/";
      url = "";
      synopsis = "Keep program state in JSON files.";
      description = "If your program manages simple state data not shared with other programs,\nthis package provide a lightweight alternative to full ACID databases. It\nallows you to load state from JSON files and update those files\nasynchronously and periodically. Version control (using Git) is supported.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."libgit" or (errorHandler.buildDepError "libgit"))
          (hsPkgs."time-units" or (errorHandler.buildDepError "time-units"))
        ];
        buildable = true;
      };
    };
  }