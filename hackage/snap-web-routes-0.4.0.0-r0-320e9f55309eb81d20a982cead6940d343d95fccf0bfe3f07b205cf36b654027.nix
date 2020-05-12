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
      identifier = { name = "snap-web-routes"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "luke.randall@gmail.com";
      author = "Luke Randall";
      homepage = "https://github.com/lukerandall/snap-web-routes";
      url = "";
      synopsis = "Type safe URLs for Snap";
      description = "Type safe URL generation and routing for Snap using web-routes.\n\nTo get started, there is a __<https://github.com/lukerandall/snap-web-routes/blob/master/README.md tutorial on GitHub>__.\n\nThis builds on <https://github.com/stepcut/snap-web-routes-demo work>\ndone by Jeremy Shaw. Thanks Jeremy!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."heist" or (errorHandler.buildDepError "heist"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."snap-core" or (errorHandler.buildDepError "snap-core"))
          (hsPkgs."snap" or (errorHandler.buildDepError "snap"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."web-routes" or (errorHandler.buildDepError "web-routes"))
          (hsPkgs."xmlhtml" or (errorHandler.buildDepError "xmlhtml"))
          ];
        buildable = true;
        };
      };
    }