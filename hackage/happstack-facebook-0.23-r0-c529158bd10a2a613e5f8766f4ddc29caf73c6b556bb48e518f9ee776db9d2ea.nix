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
    flags = { base4 = true; formlets = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "happstack-facebook"; version = "0.23"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "partners@seereason.com";
      author = "jeremy@seereason.com";
      homepage = "http://src.seereason.com/happstack-facebook/";
      url = "";
      synopsis = "A package for building Facebook applications using Happstack";
      description = "A package for building Facebook applications using Happstack";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."hsp" or (buildDepError "hsp"))
          (hsPkgs."harp" or (buildDepError "harp"))
          (hsPkgs."happstack-ixset" or (buildDepError "happstack-ixset"))
          (hsPkgs."happstack-data" or (buildDepError "happstack-data"))
          (hsPkgs."happstack-util" or (buildDepError "happstack-util"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."happstack-state" or (buildDepError "happstack-state"))
          (hsPkgs."html" or (buildDepError "html"))
          (hsPkgs."happstack-server" or (buildDepError "happstack-server"))
          (hsPkgs."hsx" or (buildDepError "hsx"))
          (hsPkgs."applicative-extras" or (buildDepError "applicative-extras"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."RJson" or (buildDepError "RJson"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."HTTP" or (buildDepError "HTTP"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."happstack" or (buildDepError "happstack"))
          (hsPkgs."json" or (buildDepError "json"))
          (hsPkgs."web-routes" or (buildDepError "web-routes"))
          (hsPkgs."web-routes-mtl" or (buildDepError "web-routes-mtl"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."text" or (buildDepError "text"))
          ] ++ (pkgs.lib).optionals (flags.base4) [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."syb" or (buildDepError "syb"))
          ]) ++ (pkgs.lib).optionals (flags.formlets) [
          (hsPkgs."happstack-extra" or (buildDepError "happstack-extra"))
          (hsPkgs."formlets" or (buildDepError "formlets"))
          (hsPkgs."formlets-hsp" or (buildDepError "formlets-hsp"))
          ];
        };
      exes = {
        "demo" = {
          build-tools = [
            (hsPkgs.buildPackages.trhsx or (pkgs.buildPackages.trhsx or (buildToolDepError "trhsx")))
            ];
          };
        };
      };
    }