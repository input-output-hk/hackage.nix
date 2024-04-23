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
      identifier = { name = "configurator-export"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Justin Le 2016";
      maintainer = "justin@jle.im";
      author = "Justin Le";
      homepage = "http://github.com/mstksg/configurator-export";
      url = "";
      synopsis = "Pretty printer and exporter for configurations from\nthe \"configurator\" library.";
      description = "Pretty printers and exporters for 'Config's from the\n<http://hackage.haskell.org/package/configurator-0.3.0.0 configurator>\nlibrary, in \"Data.Configurator\".\n\nAll results are intended to be valid parsing files in the\nconfiguration file syntax of the library.\n\nFor a full round trip:\n\n> main = do\n>   cfg <- load [Required \"config.cfg\"]\n>   writeConf \"config.cfg\" cfg\n\nThis should load the config file, parse it, and then\nre-export it, rewriting the original config file.  The\nresult should be an identical configuration file (with\nkeys potentially re-arranged and re-sorted, comments\nremoved, etc.)\n\nSee the \"Data.Configurator.Export\" module for more\ndetails and ways to modify the output style.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = if compiler.isGhc && compiler.version.ge "7.10"
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
            (hsPkgs."configurator" or (errorHandler.buildDepError "configurator"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
            (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
            (hsPkgs."configurator" or (errorHandler.buildDepError "configurator"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        buildable = true;
      };
      tests = {
        "configurator-export-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."configurator-export" or (errorHandler.buildDepError "configurator-export"))
          ];
          buildable = true;
        };
      };
    };
  }