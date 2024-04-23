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
    flags = { embeded = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "geo-uk"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Marcin Tolysz, (c) Crown copyright, Ordnance Survey and the Ministry of Defence (MOD) 2002. All rights";
      maintainer = "tolysz@gmail.com";
      author = "Marcin Tolysz";
      homepage = "https://github.com/tolysz/geo-uk";
      url = "";
      synopsis = "High precision conversion between GPS and UK Grid";
      description = "Conversion between GPS and UKGrid Coordinates one approximate and one using table.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."th-lift" or (errorHandler.buildDepError "th-lift"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."geodetics" or (errorHandler.buildDepError "geodetics"))
        ] ++ pkgs.lib.optional (flags.embeded) (hsPkgs."bzlib" or (errorHandler.buildDepError "bzlib"));
        buildable = true;
      };
    };
  }