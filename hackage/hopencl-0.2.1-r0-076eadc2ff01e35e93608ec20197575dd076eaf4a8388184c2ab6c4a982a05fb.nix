{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        libs = pkgs.lib.optional (!system.isOsx) (pkgs."OpenCL" or (errorHandler.sysDepError "OpenCL"));
        frameworks = pkgs.lib.optional (system.isOsx) (pkgs."OpenCL" or (errorHandler.sysDepError "OpenCL"));
        build-tools = [
          (hsPkgs.pkgsBuildBuild.c2hs.components.exes.c2hs or (pkgs.pkgsBuildBuild.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
      tests = {
        "unit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."hopencl" or (errorHandler.buildDepError "hopencl"))
          ];
          buildable = true;
        };
      };
    };
  }