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
      identifier = { name = "barley"; version = "0.3.0.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "markl@glyphic.com";
      author = "Johan Tibell, Mark Lentczner";
      homepage = "";
      url = "";
      synopsis = "A web based environment for learning and tinkering with Haskell";
      description = "Barley is an environment for tinkering with Haskell.  It is a web\nserver with an embedded simple programming environment rendered as\nweb pages.  The environment allows you to easily edit Haskell code\nand quickly see the result of running it.\nBarley includes a tutorial aimed at people with some programming\nand web experience, but it assumes no exposure to Haskell or\nfunctional programming.  The tutorial takes the developer from\ngenerating a simple web page through a modest web application with\ndatabase backend storage.  Along the way it exposes the programmer\nto the basic idioms needed to do simple programming tasks.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "barley" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."plugins" or (errorHandler.buildDepError "plugins"))
            (hsPkgs."snap-core" or (errorHandler.buildDepError "snap-core"))
            (hsPkgs."snap-server" or (errorHandler.buildDepError "snap-server"))
            (hsPkgs."html" or (errorHandler.buildDepError "html"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }