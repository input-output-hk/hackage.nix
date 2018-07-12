{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "OpenCLRaw";
          version = "1.0.1001";
        };
        license = "BSD-3-Clause";
        copyright = "Renaissance Computing Institute";
        maintainer = "J.R. Heard";
        author = "J.R. Heard";
        homepage = "http://vis.renci.org/jeff/opencl";
        url = "";
        synopsis = "The OpenCL Standard for heterogenous data-parallel computing";
        description = "The OpenCL system for open heterogenous data parallel supercomputing.\n**General Notes on the differences between Haskell and the OpenCL-C implementation**\n* Side-effectful procedures capable of returning an error code only return a Maybe ErrorCode, with Nothing returned upon success\n* Procedures which follow the pattern of returning a pointer to an object and taking a final parameter as an error code instead return Either ErrorCode ObjectType\n* Procedures which prefix with clGetInfo* merely take the object, parameter name, and parameter size to allocate. The allocation handled by OpenCLRaw and returned as a Haskell-managed ForeignPtr ()\n* Enumerations and constants are replaced by newtypes for the sake of type-safety.";
        buildType = "Simple";
      };
      components = {
        "OpenCLRaw" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.mtl
          ];
        };
      };
    }