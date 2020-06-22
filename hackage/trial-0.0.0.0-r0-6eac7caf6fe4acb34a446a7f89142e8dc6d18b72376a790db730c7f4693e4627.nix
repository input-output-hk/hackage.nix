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
      specVersion = "2.4";
      identifier = { name = "trial"; version = "0.0.0.0"; };
      license = "MPL-2.0";
      copyright = "2020 Kowainik";
      maintainer = "Kowainik <xrom.xkov@gmail.com>";
      author = "Veronika Romashkina, Dmitrii Kovanikov";
      homepage = "https://github.com/kowainik/trial";
      url = "";
      synopsis = "Trial Data Structure";
      description = "The @Trial@ Data Structure is a @Either@-like structure that keeps\nevents history inside. The data type allows to keep track of the\n@Fatality@ level of each such event entry (@Warning@ or @Error@).\n\n@\n__data__ Trial e a\n\\           │ │\n\\           │ ╰╴Resulting type\n\\           │\n\\           ╰╴An error item type\n\\\n\\    -- | Unsuccessful case\n\\    = Fiasco (DList (Fatality, e))\n\\              │      │         │\n\\              │      │         ╰╴One error item\n\\              │      │\n\\              │      ╰╴Level of damage\n\\              │\n\\              ╰╴Efficient list-container for error type items\n\\\n\\    -- | Successful case\n\\    | Result (DList e) a\n\\              │     │  │\n\\              │     │  ╰╴Result\n\\              │     │\n\\              │     ╰╴One warning item\n\\              │\n\\              ╰╴Efficient list-container for warning type items\n@\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."colourista" or (errorHandler.buildDepError "colourista"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          ];
        buildable = true;
        };
      tests = {
        "trial-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."trial" or (errorHandler.buildDepError "trial"))
            (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-hedgehog" or (errorHandler.buildDepError "hspec-hedgehog"))
            (hsPkgs."splitmix" or (errorHandler.buildDepError "splitmix"))
            ];
          buildable = true;
          };
        "trial-doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            ];
          buildable = true;
          };
        };
      };
    }