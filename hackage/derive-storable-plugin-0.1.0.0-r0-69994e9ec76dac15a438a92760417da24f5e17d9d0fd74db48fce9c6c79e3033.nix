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
      identifier = { name = "derive-storable-plugin"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "mateusz.p.kloczko@gmail.com";
      author = "Mateusz Kłoczko";
      homepage = "https://www.github.com/mkloczko/generic-storable-plugin/";
      url = "";
      synopsis = "GHC core plugin supporting the generic-storable package.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghci" or (errorHandler.buildDepError "ghci"))
          (hsPkgs."derive-storable" or (errorHandler.buildDepError "derive-storable"))
          ];
        buildable = true;
        };
      };
    }