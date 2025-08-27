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
      identifier = { name = "tabler-icons"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "2025 Sridhar Ratnakumar";
      maintainer = "srid@srid.ca";
      author = "Sridhar Ratnakumar";
      homepage = "https://github.com/juspay/tabler-icons-hs";
      url = "";
      synopsis = "Haskell bindings for Tabler SVG icons";
      description = "Haskell bindings for the Tabler icons library.\n\nThis package provides access to Tabler SVG icons as ByteString values,\nallowing them to be embedded directly in Haskell web applications.\n\nThe icons are sourced from https://github.com/tabler/tabler-icons";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
    };
  }