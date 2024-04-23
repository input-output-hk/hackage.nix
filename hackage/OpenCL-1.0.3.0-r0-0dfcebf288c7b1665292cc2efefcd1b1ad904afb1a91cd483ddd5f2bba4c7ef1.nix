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
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "OpenCL"; version = "1.0.3.0"; };
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
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        frameworks = pkgs.lib.optional (system.isLinux) (pkgs."OpenCL" or (errorHandler.sysDepError "OpenCL")) ++ pkgs.lib.optional (system.isOsx) (pkgs."OpenCL" or (errorHandler.sysDepError "OpenCL"));
        build-tools = [
          (hsPkgs.buildPackages.c2hs.components.exes.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."OpenCL" or (errorHandler.buildDepError "OpenCL"))
          ];
          buildable = true;
        };
      };
    };
  }