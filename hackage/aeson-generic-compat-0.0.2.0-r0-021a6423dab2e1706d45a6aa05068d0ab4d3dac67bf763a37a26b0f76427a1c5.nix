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
    flags = { aeson1 = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "aeson-generic-compat"; version = "0.0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2016-2022 Kei Hibino";
      maintainer = "ex8k.hibino@gmail.com";
      author = "Kei Hibino";
      homepage = "";
      url = "";
      synopsis = "Compatible generic class names of Aeson";
      description = "This package includes compatible generic class names of Aeson package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ] ++ (if flags.aeson1
          then [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            ]
          else [ (hsPkgs."aeson" or (errorHandler.buildDepError "aeson")) ]);
        buildable = true;
        };
      };
    }