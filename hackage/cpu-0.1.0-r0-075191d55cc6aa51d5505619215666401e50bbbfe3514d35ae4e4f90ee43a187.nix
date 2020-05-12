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
    flags = { executable = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "cpu"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "http://github.com/vincenthz/hs-cpu";
      url = "";
      synopsis = "Cpu information and properties helpers.";
      description = "Lowlevel cpu routines to get basic properties of the cpu platform, like endianness and architecture.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      exes = {
        "cpuid" = {
          depends = (pkgs.lib).optionals (flags.executable) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cpu" or (errorHandler.buildDepError "cpu"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = if flags.executable then true else false;
          };
        };
      };
    }