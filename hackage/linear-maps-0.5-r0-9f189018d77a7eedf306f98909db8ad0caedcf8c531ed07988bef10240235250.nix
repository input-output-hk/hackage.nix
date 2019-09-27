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
    flags = { check = false; pure = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "linear-maps"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 by Péter Diviánszky";
      maintainer = "Péter Diviánszky <divip@aszt.inf.elte.hu>";
      author = "Péter Diviánszky <divip@aszt.inf.elte.hu>";
      homepage = "";
      url = "";
      synopsis = "Finite maps for linear use";
      description = "Finite maps for linear use.\n\nThis package contains three different implementations with the same interface.\nThe implementations are controlled by Cabal flags which can be set at installation time\nwith the following commands:\n\n[@cabal install -fcheck@]\nInstalls an implementation where linear use of maps is needed and checked (at runtime).\nIt is recommended to use this version during development.\n\n[@cabal install@]\nInstalls an implementation where linear use of maps is needed but not checked.\nIt is the fastest implementation so it is ideal for the final product.\nInstall this only if you are certain that maps are used linearly.\n\n[@cabal install -fpure@]\nInstalls an implementation where linear use of maps is not needed and not checked.\nThis is the simplest implementation so it can be read as a documentation.\nDo not install this version because it is slow and does not check the linear use of maps.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."HUnit" or (buildDepError "HUnit"))
          ];
        buildable = true;
        };
      };
    }