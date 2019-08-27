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
      specVersion = "1.6";
      identifier = { name = "nomyx-web"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "corentin.dupont@gmail.com";
      author = "Corentin Dupont";
      homepage = "http://www.nomyx.net";
      url = "";
      synopsis = "Web gui for Nomyx";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."nomyx-language" or (buildDepError "nomyx-language"))
          (hsPkgs."nomyx-core" or (buildDepError "nomyx-core"))
          (hsPkgs."nomyx-auth" or (buildDepError "nomyx-auth"))
          (hsPkgs."HTTP" or (buildDepError "HTTP"))
          (hsPkgs."imprevu" or (buildDepError "imprevu"))
          (hsPkgs."imprevu-happstack" or (buildDepError "imprevu-happstack"))
          (hsPkgs."acid-state" or (buildDepError "acid-state"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
          (hsPkgs."blaze-markup" or (buildDepError "blaze-markup"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."happstack-authenticate" or (buildDepError "happstack-authenticate"))
          (hsPkgs."happstack-server" or (buildDepError "happstack-server"))
          (hsPkgs."hscolour" or (buildDepError "hscolour"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."jmacro" or (buildDepError "jmacro"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."reform" or (buildDepError "reform"))
          (hsPkgs."reform-blaze" or (buildDepError "reform-blaze"))
          (hsPkgs."reform-happstack" or (buildDepError "reform-happstack"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."web-routes" or (buildDepError "web-routes"))
          (hsPkgs."web-routes-happstack" or (buildDepError "web-routes-happstack"))
          (hsPkgs."web-routes-th" or (buildDepError "web-routes-th"))
          ];
        };
      };
    }