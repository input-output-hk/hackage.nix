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
      identifier = { name = "hakyll-filestore"; version = "0.1.8"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "arasergus@posteo.net";
      author = "Aras Ergus";
      homepage = "https://gitlab.com/aergus/hakyll-filestore";
      url = "";
      synopsis = "FileStore utilities for Hakyll";
      description = "These utilities can (in particular) be used for extracting\ndate and author information for items from a darcs, git or\nmercurial repository.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."filestore" or (errorHandler.buildDepError "filestore"))
          (hsPkgs."hakyll" or (errorHandler.buildDepError "hakyll"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."time-locale-compat" or (errorHandler.buildDepError "time-locale-compat"))
          ];
        buildable = true;
        };
      };
    }