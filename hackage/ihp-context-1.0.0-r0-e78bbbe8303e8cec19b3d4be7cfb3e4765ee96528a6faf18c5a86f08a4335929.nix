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
      specVersion = "2.2";
      identifier = { name = "ihp-context"; version = "1.0.0"; };
      license = "MIT";
      copyright = "(c) digitally induced GmbH";
      maintainer = "hello@digitallyinduced.com";
      author = "digitally induced GmbH";
      homepage = "https://ihp.digitallyinduced.com/";
      url = "";
      synopsis = "Minimal typed context container for IHP";
      description = "This package provides ControllerContext, a typed key-value container with minimal dependencies.\n\nThe main IHP framework has heavy transitive dependencies (database, mail, logging, etc.)\nthrough FrameworkConfig. By extracting ControllerContext into this lightweight package,\nother IHP packages like ihp-pagehead can depend only on ihp-context instead of the\nfull ihp package, significantly reducing their dependency footprint.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."typerep-map" or (errorHandler.buildDepError "typerep-map"))
        ];
        buildable = true;
      };
    };
  }