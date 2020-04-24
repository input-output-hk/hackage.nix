{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "azure-servicebus"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Hemanth Kapila (c) 2014-2015";
      maintainer = "saihemanth@gmail.com";
      author = "Hemanth Kapila";
      homepage = "https://github.com/kapilash/hs-azure";
      url = "";
      synopsis = "Windows Azure ServiceBus API";
      description = "Haskell wrappers over Windows Azure ServiceBus API.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."azure-acs" or ((hsPkgs.pkgs-errors).buildDepError "azure-acs"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
          (hsPkgs."connection" or ((hsPkgs.pkgs-errors).buildDepError "connection"))
          ];
        buildable = true;
        };
      };
    }