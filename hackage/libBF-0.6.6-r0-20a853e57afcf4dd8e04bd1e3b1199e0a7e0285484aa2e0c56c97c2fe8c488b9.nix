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
      identifier = { name = "libBF"; version = "0.6.6"; };
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
        libs = pkgs.lib.optionals (!(compiler.isGhc && compiler.version.ge "9.4")) (pkgs.lib.optionals (system.isWindows) (if system.isX86_64
          then [
            (pkgs."gcc_s_seh-1" or (errorHandler.sysDepError "gcc_s_seh-1"))
          ]
          else [
            (pkgs."gcc_s_dw2-1" or (errorHandler.sysDepError "gcc_s_dw2-1"))
          ])) ++ pkgs.lib.optional (flags.system-libbf) (pkgs."bf" or (errorHandler.sysDepError "bf"));
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs.components.exes.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
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