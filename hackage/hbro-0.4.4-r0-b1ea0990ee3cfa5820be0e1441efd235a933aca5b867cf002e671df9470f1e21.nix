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
      specVersion = "1.8";
      identifier = { name = "hbro"; version = "0.4.4"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "koral at mailoo dot org";
      author = "koral";
      homepage = "";
      url = "";
      synopsis = "A suckless minimal KISSy browser";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."webkit" or (errorHandler.buildDepError "webkit"))
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
          (hsPkgs."glade" or (errorHandler.buildDepError "glade"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."dyre" or (errorHandler.buildDepError "dyre"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."url" or (errorHandler.buildDepError "url"))
          (hsPkgs."zeromq-haskell" or (errorHandler.buildDepError "zeromq-haskell"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
        buildable = true;
        };
      exes = {
        "hbro" = {
          depends = [
            (hsPkgs."hbro" or (errorHandler.buildDepError "hbro"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."webkit" or (errorHandler.buildDepError "webkit"))
            ];
          buildable = true;
          };
        };
      };
    }