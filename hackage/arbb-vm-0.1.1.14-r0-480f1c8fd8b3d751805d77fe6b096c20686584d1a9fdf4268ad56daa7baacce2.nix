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
      identifier = { name = "arbb-vm"; version = "0.1.1.14"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011-2012 Intel Corporation";
      maintainer = "Joel Svensson<svenssonjoel@yahoo.se>";
      author = "Joel Svensson<svenssonjoel@yahoo.se>";
      homepage = "https://github.com/svenssonjoel/arbb-vm/wiki";
      url = "";
      synopsis = "FFI binding to the Intel Array Building Blocks (ArBB) virtual machine.";
      description = "Bindings to the \"arbb_vmapi\". Low level interface to the ArBB functionality.\nRequires Intel ArBB version 1.0.0.030 (download ArBB at software.intel.com)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
        ];
        libs = [ (pkgs."arbb_dev" or (errorHandler.sysDepError "arbb_dev")) ];
        buildable = true;
      };
    };
  }