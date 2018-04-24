{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      debug = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hopencl";
          version = "0.2.1";
        };
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
        hopencl = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
          libs = pkgs.lib.optional (!system.isOsx) pkgs.OpenCL;
          frameworks = pkgs.lib.optional system.isOsx pkgs.OpenCL;
          build-tools = [ hsPkgs.c2hs ];
        };
        tests = {
          unit = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.HUnit
              hsPkgs.test-framework-hunit
              hsPkgs.hopencl
            ];
          };
        };
      };
    }