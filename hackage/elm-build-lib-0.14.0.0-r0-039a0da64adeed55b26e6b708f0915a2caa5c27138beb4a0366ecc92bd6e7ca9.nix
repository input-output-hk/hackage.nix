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
      specVersion = "1.6";
      identifier = { name = "elm-build-lib"; version = "0.14.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2014 Joey Eremondi";
      maintainer = "joey@eremondi.com";
      author = "Joey Eremondi";
      homepage = "http://github.com/JoeyEremondi/elm-build-lib";
      url = "";
      synopsis = "Compile Elm code to JS within Haskell";
      description = "This library provides both runtime and Template Haskell functions which let you take multi-module\nElm Programs and compile them to JavaScript.\nThe main goal of this is to allow Elm to be used as a frontend for Haskell servers or Web apps.\nThe library is independent of any specific framework, so it should work with Yesod, Snap, Happstack, Scotty, etc.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."elm-core-sources" or (errorHandler.buildDepError "elm-core-sources"))
          (hsPkgs."elm-compiler" or (errorHandler.buildDepError "elm-compiler"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
    };
  }