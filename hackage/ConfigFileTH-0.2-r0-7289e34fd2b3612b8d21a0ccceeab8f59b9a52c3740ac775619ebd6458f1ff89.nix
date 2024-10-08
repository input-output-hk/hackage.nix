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
      specVersion = "1.2";
      identifier = { name = "ConfigFileTH"; version = "0.2"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Ville Tirronen <ville.e.t.tirronen@jyu.fi>";
      author = "Ville Tirronen";
      homepage = "";
      url = "";
      synopsis = "Template haskell for reading ConfigFiles.";
      description = "This module provides syntax for concise definitions of config files from\nData.ConfigFile through template haskell.\nFor example, the following splice,\n$(genConf \"Example\" [$conf|\nelbow/center -> ec :: Double\nelbow/min    -> emi :: Double\nelbow/max    -> ema :: Double\n|])\nresolves into declaration of the following datatype\ndata Example = Example {ec  :: Double\n,emi :: Double\n,ema :: Double}\nand a function\nloadExample :: (MonadIO m) => FilePath -> m (Either CPError Example) ,\nwhich uses Data.ConfigFile to read a values for the above struct from\na file.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ConfigFile" or (errorHandler.buildDepError "ConfigFile"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
        ];
        buildable = true;
      };
    };
  }