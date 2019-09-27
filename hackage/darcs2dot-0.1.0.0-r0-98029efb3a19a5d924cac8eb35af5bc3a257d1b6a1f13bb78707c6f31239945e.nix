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
      specVersion = "1.8";
      identifier = { name = "darcs2dot"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "soenkehahn@gmail.com";
      author = "Sönke Hahn";
      homepage = "";
      url = "";
      synopsis = "Outputs dependencies of darcs patches in dot format.";
      description = "Outputs dependencies of darcs patches in dot format. Just run darcs2dot in a darcs repo and it will output (the transitive reduction of) the dependencies of the patches in dot format to stdout.\n\nYou can use the graphviz tools to generate graph files from that. For example:\n\n@\$ darcs2dot | dot -Tpdf -o darcsDeps.pdf@";
      buildType = "Simple";
      };
    components = {
      exes = {
        "darcs2dot" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."darcs" or (buildDepError "darcs"))
            (hsPkgs."string-conversions" or (buildDepError "string-conversions"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."graph-wrapper" or (buildDepError "graph-wrapper"))
            ];
          buildable = true;
          };
        };
      };
    }