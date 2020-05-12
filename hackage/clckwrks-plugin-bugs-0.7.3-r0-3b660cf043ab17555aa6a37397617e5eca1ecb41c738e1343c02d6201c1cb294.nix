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
      identifier = { name = "clckwrks-plugin-bugs"; version = "0.7.3"; };
      license = "BSD-3-Clause";
      copyright = "2012 Jeremy Shaw, SeeReason Partners LLC";
      maintainer = "Jeremy Shaw <jeremy@n-heptane.com>";
      author = "Jeremy Shaw";
      homepage = "http://clckwrks.com/";
      url = "";
      synopsis = "bug tracking plugin for clckwrks";
      description = "";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."acid-state" or (errorHandler.buildDepError "acid-state"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."clckwrks" or (errorHandler.buildDepError "clckwrks"))
          (hsPkgs."clckwrks-plugin-page" or (errorHandler.buildDepError "clckwrks-plugin-page"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."happstack-authenticate" or (errorHandler.buildDepError "happstack-authenticate"))
          (hsPkgs."happstack-server" or (errorHandler.buildDepError "happstack-server"))
          (hsPkgs."happstack-hsp" or (errorHandler.buildDepError "happstack-hsp"))
          (hsPkgs."hsp" or (errorHandler.buildDepError "hsp"))
          (hsPkgs."ixset" or (errorHandler.buildDepError "ixset"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."reform" or (errorHandler.buildDepError "reform"))
          (hsPkgs."reform-happstack" or (errorHandler.buildDepError "reform-happstack"))
          (hsPkgs."reform-hsp" or (errorHandler.buildDepError "reform-hsp"))
          (hsPkgs."safecopy" or (errorHandler.buildDepError "safecopy"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."web-plugins" or (errorHandler.buildDepError "web-plugins"))
          (hsPkgs."web-routes" or (errorHandler.buildDepError "web-routes"))
          (hsPkgs."web-routes-th" or (errorHandler.buildDepError "web-routes-th"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsx2hs or (pkgs.buildPackages.hsx2hs or (errorHandler.buildToolDepError "hsx2hs")))
          ];
        buildable = true;
        };
      };
    }