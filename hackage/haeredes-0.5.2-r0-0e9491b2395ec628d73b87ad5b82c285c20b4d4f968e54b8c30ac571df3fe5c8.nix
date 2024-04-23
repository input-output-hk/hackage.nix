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
      identifier = { name = "haeredes"; version = "0.5.2"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "Michael Orlitzky <michael@orlitzky.com>";
      author = "Michael Orlitzky";
      homepage = "http://michael.orlitzky.com/code/haeredes.xhtml";
      url = "";
      synopsis = "Confirm delegation of NS and MX records.";
      description = "Haeredes is primarily useful for ISP network administrators.\nCustomers will occasionally decide to switch hosts without alerting\nthe current host; this can cause two problems:\n\n* With NS records, the previous host (at the very least) keeps\nhosting a DNS zone that does nothing. If that host uses their\nauthoritative nameserver as a caching lookup server as well, it\nmay return incorrect results to queries about the domain in\nquestion.\n\n* For MX records, the situation is slightly worse. Most mail servers\nwill immediately accept mail for which the server thinks it is the\nultimate destination. If a mail server is configured as the\ndestination for a domain, but it is not the MX for that domain,\nthen mail submitted to that server may possibly be lost. It is\ntherefore important to remove domains from the old mail host as\nsoon as the MX record is changed.\n\nHaeredes can alert administrators when NS/MX records are changed. More\ndetail and usage examples can be found in the man page.\n\n/Examples/:\n\nMake sure example.com has the expected name servers,\n[ab].iana-servers.net:\n\n@\n$ echo \\\"example.com\\\" | haeredes a.iana-servers.net b.iana-servers.net\n@\n\nCheck orlitzky.com against only one of the expected two nameservers:\n\n@\n$ echo \\\"orlitzky.com\\\" | haeredes dns1.viabit.com\nDomain \\\"orlitzky.com.\\\" delegates somewhere else: \\\"dns2.viabit.com.\\\"\n@\n\nCheck a nonexistent domain (we provide no delegates, since we\nknow .doesnt-exist will not be delegated):\n\n@\n$ echo \\\"foo.doesnt-exist\\\" | haeredes\nDomain \\\"foo.doesnt-exist.\\\" not delegated.\n@";
      buildType = "Simple";
    };
    components = {
      exes = {
        "haeredes" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."dns" or (errorHandler.buildDepError "dns"))
            (hsPkgs."iproute" or (errorHandler.buildDepError "iproute"))
            (hsPkgs."parallel-io" or (errorHandler.buildDepError "parallel-io"))
          ];
          buildable = true;
        };
      };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."filemanip" or (errorHandler.buildDepError "filemanip"))
          ];
          buildable = true;
        };
        "shelltests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
          buildable = true;
        };
      };
    };
  }