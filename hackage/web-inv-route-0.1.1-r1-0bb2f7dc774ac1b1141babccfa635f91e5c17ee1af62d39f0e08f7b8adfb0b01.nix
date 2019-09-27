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
    flags = { uri = true; wai = true; snap = true; happstack = true; };
    package = {
      specVersion = "1.20";
      identifier = { name = "web-inv-route"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "2016";
      maintainer = "dylan@dylex.net";
      author = "Dylan Simon";
      homepage = "";
      url = "";
      synopsis = "Composable, reversible, efficient web routing based on invertible invariants and bijections";
      description = "Utilities to route HTTP requests, mainly focused on path components.  Routes are specified using bijections and invariant functors, allowing run-time composition (routes can be distributed across modules), reverse and forward routing derived from the same specification, and O(log n) lookups.\n\nThere are four steps/components of this package.\n\n1. Route endpoint specification: \"Web.Route.Invertible.Common\"\n\n2. Route map construction: \"Web.Route.Invertible.Common\"\n\n3. Route map lookup: \"Web.Route.Invertible\" (for the generic interface), \"Web.Route.Invertible.Wai\", \"Web.Route.Invertible.Snap\", or \"Web.Route.Invertible.Happstack\"\n\n4. Reverse routing: \"Web.Route.Invertible\" or \"Web.Route.Invertible.URI\"\n\nMost users will just want to import a framework-specific module like \"Web.Route.Invertible.Wai\" (or the generic \"Web.Route.Invertible\"), each of which re-exports \"Web.Route.Invertible.Common\".\nSee test/Main.hs for some examples.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."invertible" or (buildDepError "invertible"))
          ] ++ (pkgs.lib).optional (flags.uri) (hsPkgs."network-uri" or (buildDepError "network-uri"))) ++ (pkgs.lib).optional (flags.wai) (hsPkgs."wai" or (buildDepError "wai"))) ++ (pkgs.lib).optional (flags.snap) (hsPkgs."snap-core" or (buildDepError "snap-core"))) ++ (pkgs.lib).optional (flags.happstack) (hsPkgs."happstack-server" or (buildDepError "happstack-server"));
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."web-inv-route" or (buildDepError "web-inv-route"))
            ];
          buildable = true;
          };
        };
      };
    }