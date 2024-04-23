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
    flags = {
      with-configuration-tools = false;
      with-aeson = false;
      with-quickcheck = false;
    };
    package = {
      specVersion = "2.2";
      identifier = { name = "hostaddress"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2020, Lars Kuhtz <lakuhtz@gmail.com>";
      maintainer = "Lars Kuhtz <lakuhtz@gmail.com>";
      author = "Lars Kuhtz";
      homepage = "https://github.com/larskuhtz/hostaddress";
      url = "";
      synopsis = "Network Host Addresses";
      description = "Host addresses as described in RFC2396 section 3.2.2 with additional consideration of\n\n* RFC1123 (additional restrictions for hostnames),\n* RFC1034 (disambiguate domain names and IPv4 addresses),\n* RFC4291 (parsing of IPv6 addresses), and\n* RFC3986 and RFC5952 (IPv6 literals within host addresses).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."microlens-th" or (errorHandler.buildDepError "microlens-th"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."iproute" or (errorHandler.buildDepError "iproute"))
        ] ++ pkgs.lib.optional (flags.with-aeson) (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))) ++ pkgs.lib.optionals (flags.with-configuration-tools) [
          (hsPkgs."configuration-tools" or (errorHandler.buildDepError "configuration-tools"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
        ]) ++ pkgs.lib.optional (flags.with-quickcheck) (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"));
        buildable = true;
      };
    };
  }