{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "oculus";
          version = "0.1.0.1";
        };
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
        "oculus" = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.either
            hsPkgs.monads-tf
            hsPkgs.vect-floating
          ];
          libs = [
            pkgs.ovr
            pkgs.udev
            pkgs.pthread
            pkgs.GL
            pkgs.X11
            pkgs.Xinerama
            pkgs."stdc++"
          ];
        };
      };
    }