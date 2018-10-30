{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "OpenCL";
        version = "1.0.2.6";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Luis Cabellos, at The Institute of Physics of Cantabria (IFCA)";
      maintainer = "Luis Cabellos";
      author = "Luis Cabellos";
      homepage = "https://github.com/zhensydow/opencl";
      url = "";
      synopsis = "Haskell high-level wrapper for OpenCL";
      description = "Haskell FFI binding to OpenCL library. It includes high-level wrappers to\nhelp development. Based on the OpenCLRaw package.\n\nMost of the functions can throw a 'CLError' exception. Using the module\n'Control.Exception' helps to work with this package's exceptions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
        ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.OpenCL)
          ];
          libs = [ (pkgs."OpenCL") ];
        };
      };
    };
  }