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
      specVersion = "1.18";
      identifier = { name = "ec2-unikernel"; version = "0.9.8"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2016 Galois, Inc.";
      maintainer = "Adam Wick <awick@galois.com>";
      author = "Adam Wick <awick@galois.com>";
      homepage = "http://github.com/GaloisInc/ec2-unikernel";
      url = "";
      synopsis = "A handy tool for uploading unikernels to Amazon's EC2.";
      description = "This tool uploads unikernels built with the HaLVM, Mirage,\nor other tools to Amazon's cloud. The unikernel will then\nappear as an AMI, which can be run and shared as needed.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ec2-unikernel" = {
          depends = [
            (hsPkgs."amazonka" or (errorHandler.buildDepError "amazonka"))
            (hsPkgs."amazonka-core" or (errorHandler.buildDepError "amazonka-core"))
            (hsPkgs."amazonka-ec2" or (errorHandler.buildDepError "amazonka-ec2"))
            (hsPkgs."amazonka-s3" or (errorHandler.buildDepError "amazonka-s3"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ];
          buildable = true;
          };
        };
      };
    }