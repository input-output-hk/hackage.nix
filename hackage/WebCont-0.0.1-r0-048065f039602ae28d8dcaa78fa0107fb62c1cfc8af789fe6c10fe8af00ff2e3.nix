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
      identifier = { name = "WebCont"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "amsay@amsay.net";
      author = "Sam Anklesaria";
      homepage = "http://patch-tag.com/r/salazar/webconts/snapshot/current/content/pretty";
      url = "";
      synopsis = "Continuation based web programming for Happstack";
      description = "WebCont allows continuation based web programming to be integrated with Happstack, allowing\nstep based interfaces along with traditional handlers. It is based on <http://gist.github.com/260052>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."happstack-server" or (buildDepError "happstack-server"))
          (hsPkgs."happstack-state" or (buildDepError "happstack-state"))
          (hsPkgs."happstack-util" or (buildDepError "happstack-util"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."concatenative" or (buildDepError "concatenative"))
          (hsPkgs."formlets" or (buildDepError "formlets"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."xhtml" or (buildDepError "xhtml"))
          (hsPkgs."applicative-extras" or (buildDepError "applicative-extras"))
          (hsPkgs."base" or (buildDepError "base"))
          ];
        };
      };
    }