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
    flags = { build-examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ghcjs-vdom"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "stegeman@gmail.com";
      author = "Luite Stegeman";
      homepage = "";
      url = "";
      synopsis = "Virtual-dom bindings for GHCJS";
      description = "Virtual-dom is a library for fast incremental DOM\nupdates by comparing virtual immutable DOM trees to\nfind a minimal number of changes to update the actual DOM.\nThe bindings support memoized nodes which are only\nrecomputed when the underlying data changes, using\nreferential equality for the function and arguments.\nThe diff procedure in the virtual-dom library has been\nmodified slightly to support computing a diff in an\nasynchronous thread. Since computing a diff forces all data\naround the virtual-dom tree, the computation, the computation\ncan be expensive.\nAn asynchronous diff computation can be safely aborted\nwith an async exception.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."ghcjs-ffiqq" or (buildDepError "ghcjs-ffiqq"))
          (hsPkgs."ghcjs-base" or (buildDepError "ghcjs-base"))
          (hsPkgs."ghcjs-prim" or (buildDepError "ghcjs-prim"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          ];
        };
      exes = {
        "ghcjs-vdom-example-table" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ghcjs-ffiqq" or (buildDepError "ghcjs-ffiqq"))
            (hsPkgs."ghcjs-vdom" or (buildDepError "ghcjs-vdom"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."ghcjs-base" or (buildDepError "ghcjs-base"))
            ];
          };
        "ghcjs-vdom-example-components" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ghcjs-ffiqq" or (buildDepError "ghcjs-ffiqq"))
            (hsPkgs."ghcjs-vdom" or (buildDepError "ghcjs-vdom"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."ghcjs-base" or (buildDepError "ghcjs-base"))
            ];
          };
        "ghcjs-vdom-example-render" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ghcjs-ffiqq" or (buildDepError "ghcjs-ffiqq"))
            (hsPkgs."ghcjs-vdom" or (buildDepError "ghcjs-vdom"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."ghcjs-base" or (buildDepError "ghcjs-base"))
            ];
          };
        };
      };
    }