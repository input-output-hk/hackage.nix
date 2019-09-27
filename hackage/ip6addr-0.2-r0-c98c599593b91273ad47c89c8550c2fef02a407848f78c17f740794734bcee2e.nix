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
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "ip6addr"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michel Boucey <michel.boucey@gmail.com>";
      author = "Michel Boucey <michel.boucey@gmail.com>";
      homepage = "http://www.cybervisible.fr/ip6addr";
      url = "";
      synopsis = "Command-line tools to filter parsed IPv6 Addresses against RFC 4291 and generate random IPv6 adresses";
      description = "ip6addr consists of two command-line tools: ip6addrval which filters IPv6 addresses parsed against RFC 4291. By default, ip6addrval outputs only validated inputs, i.e. IPv6 addresses, removing CIDR suffix if necessary. -e option throws out discarded inputs to stderr (which have of course to be redirected). The second command-line tool, ip6addrgen, generates random IPv6 adresses. -p option allows to provide a prefix to all IPv6 adresses to generate. -n option allows to provide the amount of IPv6 addresses to generate.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ip6addrval" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          buildable = true;
          };
        "ip6addrgen" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }