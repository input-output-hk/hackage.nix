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
      identifier = { name = "safer-file-handles-text"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2010-2011 Bas van Dijk";
      maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
      author = "Bas van Dijk";
      homepage = "https://github.com/basvandijk/safer-file-handles-text/";
      url = "";
      synopsis = "Extends safer-file-handles with Text operations";
      description = "Extends @safer-file-handles@ with @Text@ operations";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."regions" or (errorHandler.buildDepError "regions"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."explicit-iomodes-text" or (errorHandler.buildDepError "explicit-iomodes-text"))
          (hsPkgs."safer-file-handles" or (errorHandler.buildDepError "safer-file-handles"))
          ];
        buildable = true;
        };
      };
    }