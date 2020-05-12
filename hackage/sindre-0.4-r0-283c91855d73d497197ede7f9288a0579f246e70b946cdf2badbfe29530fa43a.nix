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
      identifier = { name = "sindre"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "athas@sigkill.dk";
      author = "Troels Henriksen";
      homepage = "http://sigkill.dk/programs/sindre";
      url = "";
      synopsis = "A programming language for simple GUIs";
      description = "Sindre is a language inspired by Awk, meant for creating very simple\ngraphical user interfaces.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
          (hsPkgs."X11-xshape" or (errorHandler.buildDepError "X11-xshape"))
          (hsPkgs."X11-rm" or (errorHandler.buildDepError "X11-rm"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."x11-xim" or (errorHandler.buildDepError "x11-xim"))
          (hsPkgs."setlocale" or (errorHandler.buildDepError "setlocale"))
          (hsPkgs."regex-pcre" or (errorHandler.buildDepError "regex-pcre"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."permute" or (errorHandler.buildDepError "permute"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
        pkgconfig = [
          (pkgconfPkgs."xft" or (errorHandler.pkgConfDepError "xft"))
          ];
        buildable = true;
        };
      exes = {
        "sindre" = {
          depends = [
            (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
            (hsPkgs."X11-xshape" or (errorHandler.buildDepError "X11-xshape"))
            (hsPkgs."X11-rm" or (errorHandler.buildDepError "X11-rm"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."x11-xim" or (errorHandler.buildDepError "x11-xim"))
            (hsPkgs."setlocale" or (errorHandler.buildDepError "setlocale"))
            (hsPkgs."regex-pcre" or (errorHandler.buildDepError "regex-pcre"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."permute" or (errorHandler.buildDepError "permute"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            ];
          pkgconfig = [
            (pkgconfPkgs."xft" or (errorHandler.pkgConfDepError "xft"))
            ];
          buildable = true;
          };
        };
      };
    }