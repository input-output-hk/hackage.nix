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
      identifier = { name = "Spock-digestive"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "(c) 2014 - 2015 Alexander Thiemann <mail@athiemann.net>";
      maintainer = "mail@athiemann.net";
      author = "Alexander Thiemann <mail@athiemann.net>";
      homepage = "https://github.com/agrafix/Spock-digestive";
      url = "";
      synopsis = "Digestive functors support for Spock";
      description = "Run forms defined using digestive functors with Spock";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Spock" or (errorHandler.buildDepError "Spock"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."digestive-functors" or (errorHandler.buildDepError "digestive-functors"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          ];
        buildable = true;
        };
      };
    }