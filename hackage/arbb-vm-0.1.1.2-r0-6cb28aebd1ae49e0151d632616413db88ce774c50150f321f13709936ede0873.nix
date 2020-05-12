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
      identifier = { name = "arbb-vm"; version = "0.1.1.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011 Intel Corporation";
      maintainer = "Joel Svensson<svensson.bj@gmail.com>";
      author = "Joel Svensson<svensson.bj@gmail.com>";
      homepage = "git://github.com/svenssonjoel/arbb-vm/wiki";
      url = "";
      synopsis = "FFI binding to the Intel Array Building Blocks (ArBB) virtual machine.";
      description = "DESCRIPTION GOES HERE.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          ];
        buildable = true;
        };
      };
    }