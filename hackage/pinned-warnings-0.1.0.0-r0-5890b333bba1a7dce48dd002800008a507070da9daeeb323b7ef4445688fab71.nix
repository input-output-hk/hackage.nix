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
      specVersion = "2.4";
      identifier = { name = "pinned-warnings"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2021 Aaron Allen";
      maintainer = "aaronallen8455@gmail.com";
      author = "Aaron Allen";
      homepage = "https://github.com/aaronallen8455/pinned-warnings#readme";
      url = "";
      synopsis = "Preserve warnings in a GHCi session";
      description = "Please see the README on GitHub at <https://github.com/aaronallen8455/pinned-warnings#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
        ];
        buildable = true;
      };
    };
  }