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
      specVersion = "1.8";
      identifier = { name = "NetSNMP"; version = "0.3.0.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Pavlo Kerestey <pavlo@kerestey.net>";
      author = "Pavlo Kerestey and Humane Software for Global Access Internet Services GmbH";
      homepage = "https://github.com/ptek/netsnmp";
      url = "";
      synopsis = "Bindings for net-snmp's C API for clients";
      description = "Network.Protocol.NetSNMP is a partial binding to the\nlibrary portion of the net-snmp package.  It uses the\n'single-session api', which is claimed to be\nthread-safe.  Not all operations are supported yet;\nplease contact the maintainer if you're in need of\nexpanded functionality, and especially if you would\nlike to contribute.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        libs = [ (pkgs."netsnmp" or (errorHandler.sysDepError "netsnmp")) ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs.components.exes.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."NetSNMP" or (errorHandler.buildDepError "NetSNMP"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }