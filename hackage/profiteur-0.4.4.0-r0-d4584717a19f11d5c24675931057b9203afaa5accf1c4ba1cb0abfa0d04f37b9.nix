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
    flags = { embed-data-files = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "profiteur"; version = "0.4.4.0"; };
      license = "BSD-3-Clause";
      copyright = "2014 Jasper Van der Jeugt";
      maintainer = "Jasper Van der Jeugt <m@jaspervdj.be>";
      author = "Jasper Van der Jeugt <m@jaspervdj.be>";
      homepage = "http://github.com/jaspervdj/profiteur";
      url = "";
      synopsis = "Treemap visualiser for GHC prof files";
      description = "Treemap visualiser for GHC prof files";
      buildType = "Simple";
      };
    components = {
      exes = {
        "profiteur" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc-prof" or (errorHandler.buildDepError "ghc-prof"))
            (hsPkgs."js-jquery" or (errorHandler.buildDepError "js-jquery"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ] ++ (pkgs.lib).optionals (flags.embed-data-files) [
            (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        };
      };
    }