{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hopencl";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011. Martin Dybdal, HIPERFIT research center, University of Copenhagen";
      maintainer = "Martin Dybdal <dybber@dybber.dk>";
      author = "Martin Dybdal <dybber@dybber.dk>";
      homepage = "https://github.com/HIPERFIT/hopencl";
      url = "";
      synopsis = "Haskell bindings for OpenCL";
      description = "The bindings follows version 1.1 of the OpenCL specification.\nHaddock documentation is available at <http://projects.haskell.org/hopencl/>\n\nThe following sections of the OpenCL specification are not\nsupported currently:\n\n* Image Objects (section 5.3)\n\n* Sampler Objects (section 5.5)\n\n* Profiling of memory objects and kernels (section 5.12)\n\n* Extensions of the OpenCL standard involving the API\n\n* OpenGL and D3D related functions\n\nIn addition, the are not currently any Haskell\nwrappers for the following functions:\n\nclCreateSubBuffer, clEnqueueReadBufferRect,\nclEnqueueWriteBufferRect,\nclEnqueueCopyBufferRect, clEnqueueMapBuffer,\nclEnqueueUnmapMemObject, clEnqueueNativeKernel";
      buildType = "Custom";
    };
    components = {
      "hopencl" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
        libs = pkgs.lib.optionals (!system.isWindows) (pkgs.lib.optional (!system.isOsx) (pkgs."OpenCL"));
        frameworks = pkgs.lib.optionals (!system.isWindows) (pkgs.lib.optional (system.isOsx) (pkgs."OpenCL"));
        build-tools = [
          (hsPkgs.buildPackages.c2hs)
        ];
      };
      tests = {
        "unit" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.hopencl)
          ];
        };
      };
    };
  }