{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "OpenCL";
        version = "1.0.3.4";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Luis Cabellos, at The Institute of Physics of Cantabria (IFCA)";
      maintainer = "Luis Cabellos";
      author = "Luis Cabellos";
      homepage = "https://github.com/IFCA/opencl";
      url = "";
      synopsis = "Haskell high-level wrapper for OpenCL";
      description = "Haskell FFI binding to OpenCL library. It includes high-level wrappers to\nhelp development. Based on the OpenCLRaw package.\n\nMost of the functions can throw a 'CLError' exception. Using the module\n'Control.Exception' helps to work with this package's exceptions.";
      buildType = "Simple";
    };
    components = {
      "OpenCL" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
        ];
        libs = pkgs.lib.optional (system.isLinux) (pkgs."OpenCL") ++ pkgs.lib.optional (system.isWindows) (pkgs."OpenCL");
        frameworks = pkgs.lib.optional (system.isLinux) (pkgs."OpenCL") ++ pkgs.lib.optional (system.isOsx) (pkgs."OpenCL");
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
        };
      };
    };
  }