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
    flags = { network-uri = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "atom-basic"; version = "0.2.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Carl Baatz";
      maintainer = "Carl Baatz <carl.baatz@gmail.com>";
      author = "Carl Baatz <carl.baatz@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Basic Atom feed construction";
      description = "<https://hackage.haskell.org/package/atom-basic atom-basic> provides a\nrelatively type-safe <http://tools.ietf.org/html/rfc4287 RFC4287> Atom feed\nthat can be used to generate feed or entry XML using the types of any\nHaskell XML library. Please see the 'Web.Atom' module documentation for\nmore information.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
        ] ++ [
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
        ];
        buildable = true;
      };
    };
  }