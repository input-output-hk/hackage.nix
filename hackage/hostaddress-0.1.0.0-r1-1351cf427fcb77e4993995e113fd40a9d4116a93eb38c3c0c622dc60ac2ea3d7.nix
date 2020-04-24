{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      with-configuration-tools = false;
      with-aeson = false;
      with-quickcheck = false;
      };
    package = {
      specVersion = "2.2";
      identifier = { name = "hostaddress"; version = "0.1.0.0"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."case-insensitive" or ((hsPkgs.pkgs-errors).buildDepError "case-insensitive"))
          (hsPkgs."microlens-th" or ((hsPkgs.pkgs-errors).buildDepError "microlens-th"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."iproute" or ((hsPkgs.pkgs-errors).buildDepError "iproute"))
          ] ++ (pkgs.lib).optional (flags.with-aeson) (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))) ++ (pkgs.lib).optionals (flags.with-configuration-tools) [
          (hsPkgs."configuration-tools" or ((hsPkgs.pkgs-errors).buildDepError "configuration-tools"))
          (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          ]) ++ (pkgs.lib).optional (flags.with-quickcheck) (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"));
        buildable = true;
        };
      };
    }