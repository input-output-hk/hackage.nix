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
      identifier = { name = "dzen-utils"; version = "0.1.1"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2009 Felipe A. Lessa";
      maintainer = "felipe.lessa@gmail.com";
      author = "Felipe Almeida Lessa";
      homepage = "";
      url = "";
      synopsis = "Utilities for creating inputs for dzen.";
      description = "This library has everything you need to create your @dzen@'s\nbar input strings using powerful combinators in a type-safe way.\n\nIt can be used to create standalone \\\"scripts\\\" with @runhaskell@\nor it can be used inside @xmonad@'s main function.\n\nTo see what can be done, please read the documentation of the\ntoplevel module \"System.Dzen\".";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
        ];
        buildable = true;
      };
    };
  }