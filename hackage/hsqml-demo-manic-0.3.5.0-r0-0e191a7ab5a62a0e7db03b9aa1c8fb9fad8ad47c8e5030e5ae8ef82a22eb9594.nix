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
      identifier = { name = "hsqml-demo-manic"; version = "0.3.5.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014-2016 Robin KAY, (c) 2025 Sascha-Oliver Prolic";
      maintainer = "saschaprolic@googlemail.com";
      author = "Robin KAY";
      homepage = "http://www.gekkou.co.uk/software/hsqml/";
      url = "";
      synopsis = "HsQML-based clone of Pipe Mania";
      description = "HsQML-based clone of Pipe Mania.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hsqml-manic" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."hsqml" or (errorHandler.buildDepError "hsqml"))
          ];
          buildable = true;
        };
      };
    };
  }