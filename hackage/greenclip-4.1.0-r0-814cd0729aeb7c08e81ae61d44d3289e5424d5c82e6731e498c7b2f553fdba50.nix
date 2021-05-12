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
      identifier = { name = "greenclip"; version = "4.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Erèbe";
      maintainer = "romain.gerard@erebe.eu";
      author = "Erèbe - Romain GERARD";
      homepage = "https://github.com/erebe/greenclip#readme";
      url = "";
      synopsis = "Simple clipboard manager to be integrated with rofi";
      description = "Simple clipboard manager to be integrated with rofi - Please see README.md";
      buildType = "Simple";
      };
    components = {
      exes = {
        "greenclip" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."microlens-mtl" or (errorHandler.buildDepError "microlens-mtl"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."wordexp" or (errorHandler.buildDepError "wordexp"))
            (hsPkgs."tomland" or (errorHandler.buildDepError "tomland"))
            (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
            ];
          pkgconfig = [
            (pkgconfPkgs."x11" or (errorHandler.pkgConfDepError "x11"))
            (pkgconfPkgs."xcb" or (errorHandler.pkgConfDepError "xcb"))
            (pkgconfPkgs."xau" or (errorHandler.pkgConfDepError "xau"))
            (pkgconfPkgs."xdmcp" or (errorHandler.pkgConfDepError "xdmcp"))
            (pkgconfPkgs."xscrnsaver" or (errorHandler.pkgConfDepError "xscrnsaver"))
            ];
          buildable = true;
          };
        };
      };
    }