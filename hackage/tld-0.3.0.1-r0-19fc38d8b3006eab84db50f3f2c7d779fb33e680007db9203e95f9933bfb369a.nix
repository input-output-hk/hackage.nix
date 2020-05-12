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
      identifier = { name = "tld"; version = "0.3.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "dev@jamesparker.me";
      author = "James Parker";
      homepage = "";
      url = "";
      synopsis = "This project separates subdomains, domains, and top-level-domains from URLs. ";
      description = "This project separates subdomains, domains, and top-level-domains from URLs. At compile-time, it parses a list of top-level-domains from `data/tld.dat`. This list comes from `http://mxr.mozilla.org/mozilla/source/netwerk/dns/src/effective_tld_names.dat?raw=1`. This package most likely isn't perfect, especially when handling unicode characters.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "parser-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."tld" or (errorHandler.buildDepError "tld"))
            ];
          buildable = true;
          };
        };
      };
    }