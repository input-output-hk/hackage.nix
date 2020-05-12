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
    flags = { buildexamples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "Hoed"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2000 Andy Gill, (c) 2010 University of Kansas, (c) 2013-2014 Maarten Faddegon";
      maintainer = "hoed@maartenfaddegon.nl";
      author = "Maarten Faddegon";
      homepage = "http://maartenfaddegon.nl/pub";
      url = "";
      synopsis = "Debug anything without recomping everything!";
      description = "Lighweight debugging based on the observing of intermediate values. How values are observed can be derived with the Generic Deriving Mechanism, or generated with Template Haskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
        buildable = true;
        };
      exes = {
        "hoed-examples-SternBrocot" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-GDM-hello" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-TH-hello" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hoed" or (errorHandler.buildDepError "Hoed"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        };
      };
    }