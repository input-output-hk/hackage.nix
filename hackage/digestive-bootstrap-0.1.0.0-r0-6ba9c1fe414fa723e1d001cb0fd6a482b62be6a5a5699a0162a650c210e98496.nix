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
      identifier = { name = "digestive-bootstrap"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(c) 2014 Alexander Thiemann";
      maintainer = "mail@agrafix.net";
      author = "Alexander Thiemann <mail@agrafix.net>";
      homepage = "";
      url = "";
      synopsis = "Speed up form designing using digestive functors and bootstrap";
      description = "Generate bootstrap forms out of digestive views";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."digestive-functors" or (errorHandler.buildDepError "digestive-functors"))
          (hsPkgs."digestive-functors-blaze" or (errorHandler.buildDepError "digestive-functors-blaze"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."blaze-bootstrap" or (errorHandler.buildDepError "blaze-bootstrap"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }