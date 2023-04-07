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
      specVersion = "1.12";
      identifier = { name = "uniform-pandoc"; version = "0.1.5.2"; };
      license = "LicenseRef-GPL";
      copyright = "2021 Andrew U. Frank";
      maintainer = "Andrew U. Frank <andrewufrank@gmail.com>";
      author = "Andrew Frank";
      homepage = "https://github.com/andrewufrank/u4blog.git#readme";
      url = "";
      synopsis = "handling of   some pandoc stuff";
      description = "remove particular aspects of abstraction ";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."doclayout" or (errorHandler.buildDepError "doclayout"))
          (hsPkgs."doctemplates" or (errorHandler.buildDepError "doctemplates"))
          (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
          (hsPkgs."uniform-json" or (errorHandler.buildDepError "uniform-json"))
          (hsPkgs."uniformBase" or (errorHandler.buildDepError "uniformBase"))
          ];
        buildable = true;
        };
      };
    }