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
      specVersion = "1.6";
      identifier = { name = "mpppc"; version = "0.1.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "darinmorrison@gmail.com";
      author = "Max Bolingbroke,\nBrent Yorgey,\nDarin Morrison";
      homepage = "";
      url = "";
      synopsis = "Multi-dimensional parametric pretty-printer with color";
      description = "Multi-dimensional parametric pretty-printer with color";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }