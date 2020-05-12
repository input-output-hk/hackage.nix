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
      identifier = { name = "text-render"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "ithinkican@gmail.com";
      author = "Allen Nelson";
      homepage = "http://github.com/thinkpad20/text-render";
      url = "";
      synopsis = "A type class for rendering objects as text, pretty-printing, etc.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }