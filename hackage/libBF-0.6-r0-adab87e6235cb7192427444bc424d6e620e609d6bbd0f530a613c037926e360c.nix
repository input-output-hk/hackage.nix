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
    flags = { system-libbf = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "libBF"; version = "0.6"; };
      license = "MIT";
      copyright = "";
      maintainer = "iavor.diatchki@gmail.com";
      author = "Iavor Diatchki";
      homepage = "";
      url = "";
      synopsis = "A binding to the libBF library.";
      description = "LibBF is a C library for working with arbitray precision\nIEEE 754 floating point numbers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          ];
        libs = (pkgs.lib).optional (flags.system-libbf) (pkgs."bf" or (errorHandler.sysDepError "bf"));
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      exes = {
        "bf-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."libBF" or (errorHandler.buildDepError "libBF"))
            ];
          buildable = true;
          };
        };
      tests = {
        "libBF-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."libBF" or (errorHandler.buildDepError "libBF"))
            ];
          buildable = true;
          };
        };
      };
    }