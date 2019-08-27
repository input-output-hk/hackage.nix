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
      identifier = { name = "oculus"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Charles Durham";
      maintainer = "Charles Durham <cpdurham@gmail.com>";
      author = "Charles Durham";
      homepage = "http://github.com/cpdurham/oculus";
      url = "";
      synopsis = "Oculus Rift ffi providing head tracking data";
      description = "Bindings to the oculus rift sdk head tracking. Requires installation of the OculusSdk, currently only supported for linux installs.\nYou're going to need to either install the sdk under the default include and ld search path, or you can point cabal to your local oculusSdk install\nby using the \\\"--extra-include-dirs\\\" and \\\"--extra-lib-dirs\\\" flags.\n\nFor example\n\\\"cabal install --extra-include-dirs \\/path\\/to\\/OculusSDK\\/LibOVR\\/Include --extra-lib-dirs \\/path\\/to\\/OculusSDK\\/LibOVR\\/Lib\\/Linux\\/Release\\/x86_64\\\"\n\nBelow is a small program that initializes the rift and prints the orientation every second until ctrl-C\n\n>module Main where\n>\n>import Control.Concurrent (threadDelay)\n>import Control.Monad\n>import Control.Monad.Trans.Either\n>\n>import Rift\n>\n>main = eitherT print printOrientation initRift\n>  where printOrientation h = forever \$ wait1sec >> orientation h >>= print\n>        wait1sec = threadDelay 1000000";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."either" or (buildDepError "either"))
          (hsPkgs."monads-tf" or (buildDepError "monads-tf"))
          (hsPkgs."vect-floating" or (buildDepError "vect-floating"))
          ];
        libs = [
          (pkgs."ovr" or (sysDepError "ovr"))
          (pkgs."udev" or (sysDepError "udev"))
          (pkgs."pthread" or (sysDepError "pthread"))
          (pkgs."GL" or (sysDepError "GL"))
          (pkgs."X11" or (sysDepError "X11"))
          (pkgs."Xinerama" or (sysDepError "Xinerama"))
          (pkgs."stdc++" or (sysDepError "stdc++"))
          ];
        };
      };
    }