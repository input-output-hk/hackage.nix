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
    flags = { base4 = true; formlets = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "happstack-facebook"; version = "0.16"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "partners@seereason.com";
      author = "jeremy@seereason.com";
      homepage = "http://src.seereason.com/happstack-facebook/";
      url = "";
      synopsis = "A package for building Facebook applications using Happstack";
      description = "A package for building Facebook applications using Happstack";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hsp" or (errorHandler.buildDepError "hsp"))
          (hsPkgs."harp" or (errorHandler.buildDepError "harp"))
          (hsPkgs."happstack-ixset" or (errorHandler.buildDepError "happstack-ixset"))
          (hsPkgs."happstack-data" or (errorHandler.buildDepError "happstack-data"))
          (hsPkgs."happstack-util" or (errorHandler.buildDepError "happstack-util"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."happstack-state" or (errorHandler.buildDepError "happstack-state"))
          (hsPkgs."html" or (errorHandler.buildDepError "html"))
          (hsPkgs."happstack-server" or (errorHandler.buildDepError "happstack-server"))
          (hsPkgs."hsx" or (errorHandler.buildDepError "hsx"))
          (hsPkgs."applicative-extras" or (errorHandler.buildDepError "applicative-extras"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."RJson" or (errorHandler.buildDepError "RJson"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."happstack" or (errorHandler.buildDepError "happstack"))
          (hsPkgs."json" or (errorHandler.buildDepError "json"))
          (hsPkgs."URLT" or (errorHandler.buildDepError "URLT"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
        ] ++ pkgs.lib.optionals (flags.base4) [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
        ]) ++ pkgs.lib.optionals (flags.formlets) [
          (hsPkgs."happstack-extra" or (errorHandler.buildDepError "happstack-extra"))
          (hsPkgs."formlets" or (errorHandler.buildDepError "formlets"))
          (hsPkgs."formlets-hsp" or (errorHandler.buildDepError "formlets-hsp"))
        ];
        buildable = true;
      };
      exes = {
        "demo" = {
          build-tools = [
            (hsPkgs.buildPackages.trhsx.components.exes.trhsx or (pkgs.buildPackages.trhsx or (errorHandler.buildToolDepError "trhsx:trhsx")))
          ];
          buildable = true;
        };
      };
    };
  }