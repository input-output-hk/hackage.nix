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
    flags = { engine = true; runtime = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "matlab"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ben Sherman <benmsherman@gmail.com>";
      author = "Dylan Simon, Ben Sherman";
      homepage = "";
      url = "";
      synopsis = "Matlab bindings and interface";
      description = "This package aims to provide a comprehensive interface to the\nMathWorks MATLAB(R) libraries and native data structures, including\ncomplete matrix access, MAT-format files, linking and execution of\nruntime libraries and engine.  Requires MATLAB for full functionality\nor an installed Matlab Component Runtime (MCR). This has been tested\nwith MATLAB R2014a and might work with others.\n\n[/Installation/]\nYou will probably need add some arguments that point Cabal to your MATLAB\ninstallation. For example, on a Linux system, it may look like this:\n\n> cabal install --extra-lib-dirs=\"/usr/local/MATLAB/R2014a/bin/glnxa64/\" --extra-include-dirs=\"/usr/local/MATLAB/R2014a/extern/include/\"";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          ] ++ (pkgs.lib).optional (flags.runtime) (hsPkgs."unix" or (buildDepError "unix"));
        libs = [
          (pkgs."mx" or (sysDepError "mx"))
          (pkgs."mat" or (sysDepError "mat"))
          ] ++ (pkgs.lib).optional (flags.engine) (pkgs."eng" or (sysDepError "eng"));
        build-tools = (pkgs.lib).optional (flags.runtime) (hsPkgs.buildPackages.mcc or (pkgs.buildPackages.mcc or (buildToolDepError "mcc")));
        };
      };
    }