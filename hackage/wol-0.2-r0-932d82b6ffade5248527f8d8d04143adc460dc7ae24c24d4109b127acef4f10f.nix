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
      identifier = { name = "wol"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tom Lokhorst <tom@lokhorst.eu>";
      author = "Tom Lokhorst";
      homepage = "http://tom.lokhorst.eu/wol";
      url = "";
      synopsis = "Send a Wake on LAN Magic Packet";
      description = "A program and library to a send WoL Magic Packet, to\nremotely start a computer.\n\nThis program is useful if you have a computer that you\nkeep at a friend's house because he has a fast internet\nconnection. But he keeps turning the machine off, saying\nthat it warms up his room and your not using it anyway.\nBut now you need a way to turn the machine back on...\n\nUsage:\n\n> $ wol hostname macaddress [portnumber]\n\nIf the hostname is not statically known, you can try using\nLAN broadcast (@255.255.255.255@).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      exes = {
        "wol" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        };
      };
    }