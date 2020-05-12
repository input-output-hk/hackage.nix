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
      identifier = { name = "funbot-ext-events"; version = "0.1.0.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "♡ Copying is an act of love. Please copy, reuse and share.";
      maintainer = "fr33domlover@riseup.net";
      author = "fr33domlover";
      homepage = "https://notabug.org/fr33domlover/funbot-ext-events/";
      url = "";
      synopsis = "Interact with FunBot's external events.";
      description = "This is a library providing types and tools for interacting with\n<https://notabug.org/fr33domlover/funbot.git FunBot>'s external events. The\ncode was extracted from FunBot itself, so that independent programs can\ninteract with it, e.g. by using its client API.\nSince the provided types change every time an external event type is added or\nmodified, many of this library's releases are expected to break\ncompatibility.  In most cases you should either use a higher-level library\nsuch as <https://notabug.org/fr33domlover/funbot-client.git funbot-client>,\nor perhaps create one yourself.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }