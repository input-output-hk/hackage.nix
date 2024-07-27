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
      identifier = { name = "mDNSResponder-client"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016, Obsidian Systems LLC";
      maintainer = "shea@shealevy.com";
      author = "Shea Levy";
      homepage = "https://github.com/obsidiansystems/mDNSResponder-client";
      url = "";
      synopsis = "Library for talking to the mDNSResponder daemon.";
      description = "On OS X, iOS, and Bonjour for Windows, mDNSResponder is\nthe daemon responsible for providing the Bonjour services.\nThis is a client implementation directly on top of the\n(not documented outside of the open source code) Unix\ndomain socket protocol, as the \"low level\" dns_sd C API\nprovided by Apple relies on heavy use of callbacks and\ndoes not allow for nonblocking connections.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."network-msg" or (errorHandler.buildDepError "network-msg"))
          (hsPkgs."ctrie" or (errorHandler.buildDepError "ctrie"))
          (hsPkgs."data-endian" or (errorHandler.buildDepError "data-endian"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."mDNSResponder-client" or (errorHandler.buildDepError "mDNSResponder-client"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          ];
          buildable = true;
        };
      };
    };
  }