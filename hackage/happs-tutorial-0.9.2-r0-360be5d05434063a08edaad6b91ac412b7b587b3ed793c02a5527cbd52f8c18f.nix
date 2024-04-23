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
    flags = { base4 = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "happs-tutorial"; version = "0.9.2"; };
      license = "BSD-3-Clause";
      copyright = "2008 Thomas Hartman, 2009 Thomas Hartman & Creighton Hogg";
      maintainer = "Creighton Hogg <wchogg at gmail.com>";
      author = "Thomas Hartman, Eelco Lempsink, Creighton Hogg";
      homepage = "";
      url = "";
      synopsis = "A Happstack Tutorial that is its own web 2.0-type demo. ";
      description = "A nice way to learn how to build web sites with Happstack";
      buildType = "Simple";
    };
    components = {
      exes = {
        "happs-tutorial" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HStringTemplate" or (errorHandler.buildDepError "HStringTemplate"))
            (hsPkgs."HStringTemplateHelpers" or (errorHandler.buildDepError "HStringTemplateHelpers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."happstack" or (errorHandler.buildDepError "happstack"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hscolour" or (errorHandler.buildDepError "hscolour"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."happstack-helpers" or (errorHandler.buildDepError "happstack-helpers"))
            (hsPkgs."DebugTraceHelpers" or (errorHandler.buildDepError "DebugTraceHelpers"))
            (hsPkgs."happstack-server" or (errorHandler.buildDepError "happstack-server"))
            (hsPkgs."happstack-data" or (errorHandler.buildDepError "happstack-data"))
            (hsPkgs."happstack-ixset" or (errorHandler.buildDepError "happstack-ixset"))
            (hsPkgs."happstack-state" or (errorHandler.buildDepError "happstack-state"))
          ] ++ pkgs.lib.optionals (flags.base4) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          ];
          buildable = true;
        };
      };
    };
  }