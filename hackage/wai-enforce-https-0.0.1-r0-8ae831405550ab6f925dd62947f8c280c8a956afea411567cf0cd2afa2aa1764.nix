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
      identifier = { name = "wai-enforce-https"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "marek.faj@gmail.com";
      author = "Marek Fajkus";
      homepage = "https://github.com/turboMaCk/wai-enforce-https";
      url = "";
      synopsis = "Enforce HTTPS in Wai server app safely.";
      description = "Wai middleware enforcing HTTPS protocol on any incoming request. In case of non-encrypted HTTP, traffic is redirected using 301 Permanent Redirect or optionally 307 Temporary Redirect. Middleware has compatibility modes for various reverse proxies (load balancers) and therefore can be used with Heroku, Google Cloud (Ingress), Azure or any other type of PAS or Cloud provider.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          ];
        };
      exes = {
        "example-tls" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."wai-enforce-https" or (buildDepError "wai-enforce-https"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."warp-tls" or (buildDepError "warp-tls"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            ];
          };
        "example-proxy" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."wai-enforce-https" or (buildDepError "wai-enforce-https"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            ];
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."wai-enforce-https" or (buildDepError "wai-enforce-https"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
            ];
          };
        };
      };
    }