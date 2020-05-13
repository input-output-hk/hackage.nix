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
      specVersion = "1.2";
      identifier = { name = "Sysmon"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "virukav@gmail.com";
      author = "Vitaliy Rukavishnikov";
      homepage = "http://github.com/rukav/Sysmon";
      url = "";
      synopsis = "Sybase 15 sysmon reports processor";
      description = "A library for processing Sysbase 15 sysmon reports.\nSysmon parses and stores the reports in the interval map.\nThe interval is defined by the report's time range.\nThe library main features are parsing sysmon reports, querying the\ntime interval, aggregating the multiple sysmon reports covered by the\nrequested time interval, providing some hints. The hints properties are\nconfigured.\nSee the Log.hs for the exported functions and examples/Sample.hs for the\nusage example.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
          (hsPkgs."ConfigFile" or (errorHandler.buildDepError "ConfigFile"))
          (hsPkgs."datetime" or (errorHandler.buildDepError "datetime"))
          (hsPkgs."fingertree" or (errorHandler.buildDepError "fingertree"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
          ];
        buildable = true;
        };
      };
    }