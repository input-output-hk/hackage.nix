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
      identifier = { name = "casadi-bindings-internal"; version = "0.1.1"; };
      license = "LGPL-3.0-only";
      copyright = "(c) 2013-2014 Greg Horn";
      maintainer = "gregmainland@gmail.com";
      author = "Greg Horn";
      homepage = "http://github.com/ghorn/casadi-bindings";
      url = "";
      synopsis = "low level bindings to CasADi";
      description = "Debian/Ubuntu instructions\n\nVersion numbers correspond to the C++ library version numbers except the very last number which may indicate breaking changes.\n\nThis only works on Debian/Ubuntu at the moment (sorry).\n\nInstall libcasadi from a .deb package here: https://github.com/casadi/casadi/releases, I use libcasadi-shared. (Get the version corresponding to the current casadi-bindings version, for example casadi-bindings-1.9.0.0 is libcasadi 1.9.0)\n\nThen,\n- `cabal update; cabal install casadi-bindings`\n\nTemporary note: there is something wrong with casadi and ipopt related to http://list.coin-or.org/pipermail/ipopt/2014-April/003670.html, and https://github.com/casadi/casadi/issues/1075. At the moment this .cabal package works for me as is, but YMMV";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        libs = [ (pkgs."stdc++" or (sysDepError "stdc++")) ];
        pkgconfig = [
          (pkgconfPkgs."casadi_core" or (pkgConfDepError "casadi_core"))
          ];
        };
      };
    }