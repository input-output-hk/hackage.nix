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
      identifier = { name = "pipeclip"; version = "0.1.0.1"; };
      license = "BSD-2-Clause";
      copyright = "Copyright (c) 2015, Peter Harpending.";
      maintainer = "peter@harpending.org";
      author = "Peter Harpending";
      homepage = "https://github.com/pharpend/pipeclip";
      url = "";
      synopsis = "Open your editor, pipe the output to the system clipboard";
      description = "This opens up your @$EDITOR@ or @$VISUAL@ using the\n<https://hackage.haskell.org/package/editor-open editor-open library.> It\nthen takes the edited text and sends it to the X11 clipboard.\n\nAs such, this will only work if you have X11. Translated, this is limited to\nLinux and BSD.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "pipeclip" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."editor-open" or (errorHandler.buildDepError "editor-open"))
            (hsPkgs."Hclip" or (errorHandler.buildDepError "Hclip"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          ];
          buildable = true;
        };
      };
    };
  }