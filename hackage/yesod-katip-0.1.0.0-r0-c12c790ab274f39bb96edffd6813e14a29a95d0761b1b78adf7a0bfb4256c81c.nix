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
      identifier = { name = "yesod-katip"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Isaac van Bakel";
      maintainer = "ivb@vanbakel.io";
      author = "Isaac van Bakel";
      homepage = "https://github.com/ivanbakel/yesod-katip#readme";
      url = "";
      synopsis = "Logging bridge between Yesod and Katip";
      description = "A library of ytl-style site transformers for adding Katip\nlogging functionality to Yesod monads, as well as capturing\nand redirectly Yesod-style logging to Katip scribes.\n\nThis package supports two workflows:\n\n* Taking an existing Yesod website and making its logs also\ngo to Katip, without changing any of the handlers, by\nwrapping the foundation site in a site transformer.\n\n* Using the Katip logging API inside Yesod handlers and\nwidgets through constraints on the foundation site. In\nthis workflow, the site transformers are an easy way to\ngive an existing foundation site Katip functionality and\nsensible default behaviours.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."katip" or (errorHandler.buildDepError "katip"))
          (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
          (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
          (hsPkgs."ytl" or (errorHandler.buildDepError "ytl"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."iproute" or (errorHandler.buildDepError "iproute"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }