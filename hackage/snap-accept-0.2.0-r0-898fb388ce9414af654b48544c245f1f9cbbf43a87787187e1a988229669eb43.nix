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
      identifier = { name = "snap-accept"; version = "0.2.0"; };
      license = "MIT";
      copyright = "(c) 2013-2017 Timothy Jones";
      maintainer = "Timothy Jones <tim@zmthy.net>";
      author = "Timothy Jones";
      homepage = "http://github.com/zimothy/snap-accept";
      url = "";
      synopsis = "Accept header branching for the Snap web framework";
      description = "HTTP media type functionality as a complement to Snap's 'method' and 'methods'\nfunctions.  Branches based on the value of the Accept or Accept-Language\nheader of the current request, automatically setting the Content-Type or\nContent-Language header of the response as appropriate.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."http-media" or (errorHandler.buildDepError "http-media"))
          (hsPkgs."snap-core" or (errorHandler.buildDepError "snap-core"))
          ];
        buildable = true;
        };
      };
    }