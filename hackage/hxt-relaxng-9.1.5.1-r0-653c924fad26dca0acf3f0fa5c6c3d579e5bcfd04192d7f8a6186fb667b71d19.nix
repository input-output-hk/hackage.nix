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
    flags = { network-uri = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "hxt-relaxng"; version = "9.1.5.1"; };
      license = "MIT";
      copyright = "Copyright (c) 2005-2011 Uwe Schmidt";
      maintainer = "Uwe Schmidt <uwe@fh-wedel.de>";
      author = "Uwe Schmidt, Martin Schmidt, Torben Kuseler";
      homepage = "http://www.fh-wedel.de/~si/HXmlToolbox/index.html";
      url = "";
      synopsis = "The HXT RelaxNG validator";
      description = "The HXT RelaxNG validator";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          (hsPkgs."hxt-charproperties" or (errorHandler.buildDepError "hxt-charproperties"))
          (hsPkgs."hxt-regex-xmlschema" or (errorHandler.buildDepError "hxt-regex-xmlschema"))
          ] ++ (if flags.network-uri
          then [
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            ]
          else [
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ]);
        buildable = true;
        };
      };
    }