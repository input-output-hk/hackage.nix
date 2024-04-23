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
      identifier = { name = "acme-this"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Tobias Dammers";
      maintainer = "tdammers@gmail.com";
      author = "Tobias Dammers";
      homepage = "https://github.com/tdammers/acme-this";
      url = "";
      synopsis = "import This";
      description = "Python will print pseudophilosophical gibberish when you \\\n`import this`. Haskell does not have such a feature yet. \\\nThis cannot stand. Pun intended.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
    };
  }