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
      identifier = { name = "xml-conduit-stylist"; version = "2.1.0.0"; };
      license = "MIT";
      copyright = "Adrian Cochrane copyright 2019";
      maintainer = "adrian@openwork.nz";
      author = "Adrian Cochrane";
      homepage = "https://git.adrian.geek.nz/haskell-stylist.git";
      url = "";
      synopsis = "Bridge between xml-conduit/html-conduit and stylist";
      description = "Parses CSS from an HTML webpage and queries relevant properties for each element.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stylist" or (errorHandler.buildDepError "stylist"))
          (hsPkgs."css-syntax" or (errorHandler.buildDepError "css-syntax"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
        ];
        buildable = true;
      };
    };
  }