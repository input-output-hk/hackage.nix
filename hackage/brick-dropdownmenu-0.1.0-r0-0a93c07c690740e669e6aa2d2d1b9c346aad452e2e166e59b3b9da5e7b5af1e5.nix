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
    flags = { demo = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "brick-dropdownmenu"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Mario Lang";
      maintainer = "mlang@blind.guru";
      author = "Mario Lang";
      homepage = "https://github.com/mlang/brick-dropdownmenu#readme";
      url = "";
      synopsis = "A drop-down menu widget for brick.";
      description = "A simple drop-down menu widget for the declarative text user interface library brick.\nEach submenu and menu item can have an associated global key binding.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."microlens-ghc" or (errorHandler.buildDepError "microlens-ghc"))
          (hsPkgs."microlens-th" or (errorHandler.buildDepError "microlens-th"))
          (hsPkgs."pointedlist" or (errorHandler.buildDepError "pointedlist"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
          ];
        buildable = true;
        };
      exes = {
        "brick-dropdownmenu-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
            (hsPkgs."brick-dropdownmenu" or (errorHandler.buildDepError "brick-dropdownmenu"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."microlens-ghc" or (errorHandler.buildDepError "microlens-ghc"))
            (hsPkgs."microlens-th" or (errorHandler.buildDepError "microlens-th"))
            (hsPkgs."pointedlist" or (errorHandler.buildDepError "pointedlist"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            ];
          buildable = if flags.demo then true else false;
          };
        };
      };
    }