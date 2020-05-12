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
      identifier = { name = "Holumbus-Distribution"; version = "0.0.1.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2008 Stefan Schmidt, Uwe Schmidt";
      maintainer = "Stefan Schmidt <sts@holumbus.org>";
      author = "Stefan Schmidt, Uwe Schmidt";
      homepage = "http://holumbus.fh-wedel.de";
      url = "";
      synopsis = "intra- and inter-program communication";
      description = "Holumbus-Distribution offers Erlang-Style mailboxes for an easy implementation\nof distributed systems in Haskell. The mailboxes can be used to exchange messages\nbetween threads inside a single program or between programs over the network.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."editline" or (errorHandler.buildDepError "editline"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
        buildable = true;
        };
      exes = { "PortRegistry" = { buildable = true; }; };
      };
    }