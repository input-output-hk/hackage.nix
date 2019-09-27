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
      identifier = { name = "cerberus"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2015 Yann Esposito";
      maintainer = "yann.esposito@gmail.com";
      author = "Yann Esposito";
      homepage = "http://github.com/yogsototh/cerberus#readme";
      url = "";
      synopsis = "Protect and control API access with cerberus";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
          (hsPkgs."ekg" or (buildDepError "ekg"))
          (hsPkgs."ekg-core" or (buildDepError "ekg-core"))
          (hsPkgs."hslogger" or (buildDepError "hslogger"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
          (hsPkgs."http-reverse-proxy" or (buildDepError "http-reverse-proxy"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."wai-middleware-throttle" or (buildDepError "wai-middleware-throttle"))
          (hsPkgs."wai-middleware-caching" or (buildDepError "wai-middleware-caching"))
          (hsPkgs."wai-middleware-caching-lru" or (buildDepError "wai-middleware-caching-lru"))
          (hsPkgs."wai-middleware-caching-redis" or (buildDepError "wai-middleware-caching-redis"))
          (hsPkgs."warp" or (buildDepError "warp"))
          ];
        buildable = true;
        };
      exes = {
        "cerberus" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ekg" or (buildDepError "ekg"))
            (hsPkgs."ekg-core" or (buildDepError "ekg-core"))
            (hsPkgs."hslogger" or (buildDepError "hslogger"))
            (hsPkgs."cerberus" or (buildDepError "cerberus"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            ];
          buildable = true;
          };
        };
      tests = {
        "cerberus-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cerberus" or (buildDepError "cerberus"))
            ];
          buildable = true;
          };
        };
      };
    }