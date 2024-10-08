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
      identifier = { name = "hs-pkg-config"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014 Peter Trško";
      maintainer = "peter.trsko@gmail.com";
      author = "Peter Trško";
      homepage = "https://github.com/trskop/hs-pkg-config";
      url = "";
      synopsis = "Create pkg-config configuration files";
      description = "Create /pkg-config/ configuration file from Haskell code using combinators\nspecialized for this purpose.\n\nOne of the possible usage examples of this library is generating @.pc@ files\nfrom <http://shakebuild.com Shake build system>.\n\nFor usage example see \"Data.PkgConfig\" module.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
        ];
        buildable = true;
      };
    };
  }