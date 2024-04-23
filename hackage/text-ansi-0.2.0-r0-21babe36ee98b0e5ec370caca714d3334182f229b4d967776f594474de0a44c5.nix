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
      specVersion = "2.2";
      identifier = { name = "text-ansi"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018-2022, Mitchell Rosen";
      maintainer = "Mitchell Rosen <mitchellwrosen@gmail.com>";
      author = "Mitchell Rosen";
      homepage = "https://github.com/mitchellwrosen/text-ansi";
      url = "";
      synopsis = "Text styling for ANSI terminals.";
      description = "Text styling for ANSI terminals using SGR codes, as defined by the\n<https://www.ecma-international.org/publications/files/ECMA-ST/Ecma-048.pdf ECMA-48>\nstandard.\n\nSupports foreground\\/background color, bold\\/faint intensity, italic,\nsingle\\/double underline, strikethrough, frame, encircle, and overline escape\nsequences. Some styles may not work on your terminal.\n\nAlso features terminal detection, so redirecting styled output to a file will\nautomatically strip the ANSI escape sequences.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-builder" or (errorHandler.buildDepError "text-builder"))
        ];
        buildable = true;
      };
    };
  }