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
    flags = { network--ge-3_0_0 = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hsyslog-udp"; version = "0.2.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Konstantine Rybnikov <k-bx@k-bx.com>";
      author = "Jon Childress <jon@childr.es>";
      homepage = "https://github.com/k-bx/hsyslog-udp";
      url = "";
      synopsis = "Log to syslog over a network via UDP";
      description = "Supports <https://tools.ietf.org/html/rfc5424 RFC 5424>,\n<https://tools.ietf.org/html/rfc3164 RFC 3164>, or any\narbitrary protocol.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hsyslog" or (errorHandler.buildDepError "hsyslog"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ] ++ (if flags.network--ge-3_0_0
          then [
            (hsPkgs."network-bsd" or (errorHandler.buildDepError "network-bsd"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ]
          else [
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ]);
        buildable = true;
        };
      tests = {
        "specs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hsyslog-udp" or (errorHandler.buildDepError "hsyslog-udp"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }