let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          (hsPkgs."microlens-th" or (buildDepError "microlens-th"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."iproute" or (buildDepError "iproute"))
          ] ++ (pkgs.lib).optional (flags.with-aeson) (hsPkgs."aeson" or (buildDepError "aeson"))) ++ (pkgs.lib).optionals (flags.with-configuration-tools) [
          (hsPkgs."configuration-tools" or (buildDepError "configuration-tools"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          ]) ++ (pkgs.lib).optional (flags.with-quickcheck) (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"));
        buildable = true;
        };
      };
    }