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
      identifier = { name = "ansi-terminal-types"; version = "0.11.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mike Pilgrem <public@pilgrem.com>, Roman Cheplyaka <roma@ro-che.info>";
      author = "Max Bolingbroke";
      homepage = "https://github.com/UnkindPartition/ansi-terminal";
      url = "";
      synopsis = "Types and functions used to represent SGR aspects";
      description = "The \\'ANSI\\' standards refer to the visual style of\ndisplaying characters as their \\'graphic rendition\\'. The\n\\'ANSI\\' codes to establish the graphic rendition for\nsubsequent text are referred to as SELECT GRAPHIC RENDITION\n(SGR). This package exposes modules that export types and\nfunctions used to represent SGR aspects.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
        ];
        buildable = true;
      };
    };
  }