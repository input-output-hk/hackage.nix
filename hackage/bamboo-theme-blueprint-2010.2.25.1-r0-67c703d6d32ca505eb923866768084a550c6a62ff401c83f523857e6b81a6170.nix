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
      identifier = {
        name = "bamboo-theme-blueprint";
        version = "2010.2.25.1";
        };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
      author = "Wang, Jinjing <nfjinjing@gmail.com>\n, Григорий Холомьёв <omever@gmail.com>";
      homepage = "http://github.com/nfjinjing/bamboo-theme-blueprint";
      url = "";
      synopsis = "bamboo blueprint theme";
      description = "bamboo blueprint theme";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."rss" or (buildDepError "rss"))
          (hsPkgs."xhtml" or (buildDepError "xhtml"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."gravatar" or (buildDepError "gravatar"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."mps" or (buildDepError "mps"))
          (hsPkgs."hcheat" or (buildDepError "hcheat"))
          (hsPkgs."hack" or (buildDepError "hack"))
          (hsPkgs."hack-contrib" or (buildDepError "hack-contrib"))
          (hsPkgs."bamboo" or (buildDepError "bamboo"))
          ];
        buildable = true;
        };
      };
    }