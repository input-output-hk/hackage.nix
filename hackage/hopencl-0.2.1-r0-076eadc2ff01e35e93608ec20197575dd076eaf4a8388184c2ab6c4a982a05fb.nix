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
    flags = { debug = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hopencl"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011-2014 Merijn Verstraaten, Martin Dybdal";
      maintainer = "Merijn Verstraaten <merijn@inconsistent.nl>";
      author = "Merijn Verstraaten <merijn@inconsistent.nl> (2014-present), Martin Dybdal <dybber@dybber.dk> (2011-2014)";
      homepage = "https://github.com/merijn/hopencl";
      url = "";
      synopsis = "Haskell bindings for OpenCL";
      description = "The bindings follows version 1.1 of the OpenCL specification.\nHaddock documentation is available at <http://projects.haskell.org/hopencl/>\n\nThe following sections of the OpenCL specification are not\nsupported currently:\n\n* Image Objects (section 5.3)\n\n* Sampler Objects (section 5.5)\n\n* Profiling of memory objects and kernels (section 5.12)\n\n* Extensions of the OpenCL standard involving the API\n\n* OpenGL and D3D related functions\n\nIn addition, the are not currently any Haskell\nwrappers for the following functions:\n\nclCreateSubBuffer, clEnqueueReadBufferRect,\nclEnqueueWriteBufferRect,\nclEnqueueCopyBufferRect, clEnqueueMapBuffer,\nclEnqueueUnmapMemObject, clEnqueueNativeKernel";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          ];
        libs = (pkgs.lib).optional (!system.isOsx) (pkgs."OpenCL" or (sysDepError "OpenCL"));
        frameworks = (pkgs.lib).optional (system.isOsx) (pkgs."OpenCL" or (sysDepError "OpenCL"));
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      tests = {
        "unit" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."hopencl" or (buildDepError "hopencl"))
            ];
          buildable = true;
          };
        };
      };
    }