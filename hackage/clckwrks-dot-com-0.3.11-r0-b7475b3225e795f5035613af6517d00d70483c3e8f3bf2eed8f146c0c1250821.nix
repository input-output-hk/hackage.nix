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
    flags = { backups = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "clckwrks-dot-com"; version = "0.3.11"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jeremy Shaw <jeremy@n-heptane.com>";
      author = "Jeremy Shaw";
      homepage = "http://www.clckwrks.com/";
      url = "";
      synopsis = "clckwrks.com";
      description = "";
      buildType = "Custom";
    };
    components = {
      exes = {
        "clckwrks-dot-com-server" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."clckwrks" or (errorHandler.buildDepError "clckwrks"))
            (hsPkgs."clckwrks-theme-clckwrks" or (errorHandler.buildDepError "clckwrks-theme-clckwrks"))
            (hsPkgs."clckwrks-plugin-media" or (errorHandler.buildDepError "clckwrks-plugin-media"))
            (hsPkgs."clckwrks-plugin-page" or (errorHandler.buildDepError "clckwrks-plugin-page"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."happstack-server" or (errorHandler.buildDepError "happstack-server"))
            (hsPkgs."hsp" or (errorHandler.buildDepError "hsp"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."web-plugins" or (errorHandler.buildDepError "web-plugins"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hsx2hs.components.exes.hsx2hs or (pkgs.pkgsBuildBuild.hsx2hs or (errorHandler.buildToolDepError "hsx2hs:hsx2hs")))
          ];
          buildable = true;
        };
        "clckwrks-dot-com-backups" = {
          depends = pkgs.lib.optionals (flags.backups) [
            (hsPkgs."archive" or (errorHandler.buildDepError "archive"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Extra" or (errorHandler.buildDepError "Extra"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."cabal-debian" or (errorHandler.buildDepError "cabal-debian"))
          ];
          buildable = if flags.backups then true else false;
        };
      };
    };
  }