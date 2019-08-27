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
      specVersion = "1.10";
      identifier = { name = "serv"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2015 Joseph Abrahamson";
      maintainer = "me@jspha.com";
      author = "Joseph Abrahamson <me@jspha.com>";
      homepage = "http://github.com/tel/serv#readme";
      url = "";
      synopsis = "Dependently typed API framework";
      description = "Types and kinds for describing APIs.\n\nThis package defines the kind 'Serv.Api.Api' which classifies types which\nstatically describe an API. Define your 'Serv.Api.Api'-kinded types and then\nwrite/derive compliant servers, clients, and documentation all statically\nguaranteed to match.\n\nImport \"Serv.Api.Prelude\" for the smoothest experience defining these types.\n\nSee the README for more details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."http-kinder" or (buildDepError "http-kinder"))
          (hsPkgs."singletons" or (buildDepError "singletons"))
          (hsPkgs."text" or (buildDepError "text"))
          ];
        };
      };
    }