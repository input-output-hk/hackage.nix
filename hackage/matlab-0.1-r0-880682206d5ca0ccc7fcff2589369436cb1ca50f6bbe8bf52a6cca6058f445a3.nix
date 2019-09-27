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
    flags = { engine = true; runtime = true; mcr = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "matlab"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dylan@dylex.net";
      author = "Dylan Simon";
      homepage = "";
      url = "";
      synopsis = "Matlab bindings and interface";
      description = "This package aims to provide a comprehensive interface to the MathWorks MATLAB(R) libraries and native data structures, including complete matrix access, MAT-format files, linking and execution of runtime libraries and engine.  Requires MATLAB for full functionality or an installed Matlab Component Runtime (MCR).  This has been tested with MATLAB 7.5-7.7 and might work with others.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          ];
        libs = [
          (pkgs."mx" or (sysDepError "mx"))
          ] ++ (pkgs.lib).optional (flags.engine) (pkgs."eng" or (sysDepError "eng"));
        build-tools = if flags.mcr
          then [
            (hsPkgs.buildPackages.mcr or (pkgs.buildPackages.mcr or (buildToolDepError "mcr")))
            ]
          else [
            (hsPkgs.buildPackages.matlab or (pkgs.buildPackages.matlab or (buildToolDepError "matlab")))
            ];
        buildable = true;
        };
      };
    }