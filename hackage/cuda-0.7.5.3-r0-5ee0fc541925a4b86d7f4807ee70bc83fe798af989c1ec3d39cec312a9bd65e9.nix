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
      specVersion = "1.22";
      identifier = { name = "cuda"; version = "0.7.5.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) [2009..2016]. Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
      maintainer = "Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
      author = "Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
      homepage = "https://github.com/tmcdonell/cuda";
      url = "";
      synopsis = "FFI binding to the CUDA interface for programming NVIDIA GPUs";
      description = "The CUDA library provides a direct, general purpose C-like SPMD programming\nmodel for NVIDIA graphics cards (G8x series onwards). This is a collection\nof bindings to allow you to call and control, although not write, such\nfunctions from Haskell-land. You will need to install the CUDA driver and\ndeveloper toolkit.\n\n<http://developer.nvidia.com/cuda-downloads>\n\nThe setup script will look for your CUDA installation by checking, in the\nfollowing order:\n\n1. The @CUDA_PATH@ environment variable\n\n2. Searching for @nvcc@ on the @PATH@\n\n3. Checking at @\\/usr\\/local\\/cuda@\n\n4. @CUDA_PATH_Vx_y@ environment variable, for recent CUDA toolkit versions x.y\n\nThis library provides bindings to both the CUDA Driver and Runtime APIs. To\nget started, see one of:\n\n* \"Foreign.CUDA.Driver\" (a short tutorial is available here)\n\n* \"Foreign.CUDA.Runtime\"\n\nThis release tested with versions 6.0, 6.5, 7.0, and 7.5 of the CUDA toolkit.\n\n[/NOTES:/]\n\nThe setup script for this package requires at least Cabal-1.22. To upgrade,\nexecute one of:\n\n* cabal users: @cabal install Cabal --constraint=\"Cabal >= 1.22\"@\n\n* stack users: @stack setup --upgrade-cabal@\n\nDue to an interaction between GHC-8 and unified virtual address spaces in\nCUDA, this package does not currently work with GHCi on ghc-8.0.1 (compiled\nprograms should work). See the following for more details:\n\n* <https://github.com/tmcdonell/cuda/issues/39>\n\n* <https://ghc.haskell.org/trac/ghc/ticket/12573>\n\nThe bug should be fixed in ghc-8.0.2 and beyond.\n\nFor additional notes on installing on Windows, see:\n\n* <https://github.com/tmcdonell/cuda/blob/master/WINDOWS.markdown>\n";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or (buildToolDepError "directory")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or (buildToolDepError "filepath")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (buildToolDepError "c2hs")))
          ];
        };
      exes = {
        "nvidia-device-query" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cuda" or (buildDepError "cuda"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            ];
          };
        };
      };
    }