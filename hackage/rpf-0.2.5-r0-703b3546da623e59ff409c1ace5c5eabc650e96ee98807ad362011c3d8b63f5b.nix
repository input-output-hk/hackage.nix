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
      identifier = { name = "rpf"; version = "0.2.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
      author = "Kazu Yamamoto <kazu@iij.ad.jp>";
      homepage = "http://www.mew.org/~kazu/proj/rpf/";
      url = "";
      synopsis = "Receiver Policy Framework";
      description = "Receiver Policy Framework (RPF) is a Milter\nprogram to change actions of e-mail receiver\nside according to results of the anti-spam\ntechnologies.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "rpf" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."appar" or (errorHandler.buildDepError "appar"))
            (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."c10k" or (errorHandler.buildDepError "c10k"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."dns" or (errorHandler.buildDepError "dns"))
            (hsPkgs."domain-auth" or (errorHandler.buildDepError "domain-auth"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."iproute" or (errorHandler.buildDepError "iproute"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ];
          buildable = true;
          };
        };
      };
    }