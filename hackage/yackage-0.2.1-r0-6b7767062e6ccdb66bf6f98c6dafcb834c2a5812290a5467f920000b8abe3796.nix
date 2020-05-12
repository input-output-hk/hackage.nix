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
    flags = { yackage = true; upload = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "yackage"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://github.com/snoyberg/yackage";
      url = "";
      synopsis = "Personal Hackage replacement for testing new packages.";
      description = "This package installs a yackage executable that runs a simplistic hackage-like server. It allows you to upload packages produced via cabal sdist and install them via cabal. The trick is to add the yackage repository to your cabal config file, with a line such as:\n\nremote-repo: yackage:http://localhost:3500/";
      buildType = "Simple";
      };
    components = {
      exes = {
        "yackage" = {
          depends = (pkgs.lib).optionals (flags.yackage) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
            (hsPkgs."tar" or (errorHandler.buildDepError "tar"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."data-object" or (errorHandler.buildDepError "data-object"))
            (hsPkgs."data-object-yaml" or (errorHandler.buildDepError "data-object-yaml"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."hamlet" or (errorHandler.buildDepError "hamlet"))
            (hsPkgs."yesod-form" or (errorHandler.buildDepError "yesod-form"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            ];
          buildable = if flags.yackage then true else false;
          };
        "yackage-upload" = {
          depends = (pkgs.lib).optionals (flags.upload) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."http-enumerator" or (errorHandler.buildDepError "http-enumerator"))
            (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = if flags.upload then true else false;
          };
        };
      };
    }