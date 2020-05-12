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
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "line2pdf"; version = "0.0.5"; };
      license = "BSD-3-Clause";
      copyright = "2008 Audrey Tang";
      maintainer = "Audrey Tang <audreyt@audreyt.org>";
      author = "Audrey Tang <audreyt@audreyt.org>";
      homepage = "";
      url = "";
      synopsis = "Simple command-line utility to convert text into PDF";
      description = "Simple command-line utility to convert text into PDF";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.small_base
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      exes = {
        "line2pdf" = {
          depends = if flags.small_base
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
              (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
              ]
            else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        };
      };
    }