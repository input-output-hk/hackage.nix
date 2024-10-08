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
      specVersion = "1.8";
      identifier = { name = "split-channel"; version = "0.1.2.2"; };
      license = "MIT";
      copyright = "(c) 2012 Leon P Smith";
      maintainer = "leon@melding-monads.com";
      author = "Leon P Smith";
      homepage = "";
      url = "";
      synopsis = "Control.Concurrent.Chan split into sending and receiving halves.";
      description = "This module splits Control.Concurrent.Chan into sending and receiving\nhalves, which allows the type system to more finely constrain program\nbehavior.   As a secondary benefit,  messages written to channels with\nno receive ports associated with them can be reliably garbage collected.\n\nIn addition, this module incorporates several of clean-ups and additions\nto the venerable Chan.  Most notably,  the deprecated thread-safe\nfunctions have been removed,  the ability to @duplicate@ Receive Ports\nhas been added,  the @sendMany@ operation allows for multiple messages\nto be sent atomically,  and the @split@ operation turns a single\nchannel into two.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }