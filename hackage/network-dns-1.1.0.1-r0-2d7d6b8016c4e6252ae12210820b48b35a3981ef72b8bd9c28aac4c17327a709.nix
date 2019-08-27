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
      specVersion = "2.0";
      identifier = { name = "network-dns"; version = "1.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2013, 2017 Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      maintainer = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      author = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      homepage = "https://github.com/mvv/network-dns";
      url = "";
      synopsis = "Domain Name System data structures";
      description = "This package provides Domain Name System data structures and\n(de)serialization routines.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."type-hint" or (buildDepError "type-hint"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-serializer" or (buildDepError "data-serializer"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."text-latin1" or (buildDepError "text-latin1"))
          (hsPkgs."text-printer" or (buildDepError "text-printer"))
          (hsPkgs."data-textual" or (buildDepError "data-textual"))
          (hsPkgs."parsers" or (buildDepError "parsers"))
          (hsPkgs."network-ip" or (buildDepError "network-ip"))
          ];
        };
      exes = {
        "hs-network-dns-examples-resolver" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."data-textual" or (buildDepError "data-textual"))
            (hsPkgs."data-serializer" or (buildDepError "data-serializer"))
            (hsPkgs."network-ip" or (buildDepError "network-ip"))
            (hsPkgs."network-dns" or (buildDepError "network-dns"))
            ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."posix-socket" or (buildDepError "posix-socket"));
          };
        };
      };
    }