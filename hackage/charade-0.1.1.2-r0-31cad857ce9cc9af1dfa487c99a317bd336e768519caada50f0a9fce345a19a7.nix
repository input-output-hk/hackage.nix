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
      identifier = { name = "charade"; version = "0.1.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "doug.beardsley@soostone.com";
      author = "Doug Beardsley";
      homepage = "https://github.com/soostone/charade";
      url = "";
      synopsis = "Rapid prototyping websites with Snap and Heist";
      description = "Charade is a tool for rapid website prototyping using Heist and Snap.\nCharade-generated sites can easily be dropped into Snap applications\nand work out of the box with no modification.\n\nThe main thing provided by this package is the charade executable that\nserves your prototype sites.  The library provided contains a Heist splice\nthat you use to make all evidence of charade disappear in your production\napp.\n\nFor more information, see the @README@: <https://github.com/soostone/charade/blob/master/README.md>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."configurator" or (errorHandler.buildDepError "configurator"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."heist" or (errorHandler.buildDepError "heist"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."snap" or (errorHandler.buildDepError "snap"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."xmlhtml" or (errorHandler.buildDepError "xmlhtml"))
          ];
        buildable = true;
        };
      exes = {
        "charade" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."configurator" or (errorHandler.buildDepError "configurator"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."heist" or (errorHandler.buildDepError "heist"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."snap" or (errorHandler.buildDepError "snap"))
            (hsPkgs."snap-core" or (errorHandler.buildDepError "snap-core"))
            (hsPkgs."snap-extras" or (errorHandler.buildDepError "snap-extras"))
            (hsPkgs."snap-server" or (errorHandler.buildDepError "snap-server"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."xmlhtml" or (errorHandler.buildDepError "xmlhtml"))
            ];
          buildable = true;
          };
        };
      };
    }