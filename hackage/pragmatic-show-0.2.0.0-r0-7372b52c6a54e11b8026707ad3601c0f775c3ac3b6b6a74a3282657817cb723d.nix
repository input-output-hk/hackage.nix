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
      identifier = { name = "pragmatic-show"; version = "0.2.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "(@) jsag $ kth.se";
      author = "Justus Sagemüller";
      homepage = "https://github.com/leftaroundabout/pragmatic-show";
      url = "";
      synopsis = "Alternative Show class that gives shorter view if possible.";
      description = "The standard 'Show' class is handy for quickly viewing any Haskell\nvalues without having to think about formatting. However, it often\nproduces needlessly clunky string representations, which are difficult\nto parse by eye. This package offers a drop-in replacement which\nattempts to keep the representation as readable as possible.\nIt does this through more graphical layout, omission of redundant\ninformation, and (still quite conservative) trimming of low-significance\ndigits.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
      tests = {
        "pragmatic-show-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
            (hsPkgs."pragmatic-show" or (errorHandler.buildDepError "pragmatic-show"))
          ];
          buildable = true;
        };
      };
    };
  }