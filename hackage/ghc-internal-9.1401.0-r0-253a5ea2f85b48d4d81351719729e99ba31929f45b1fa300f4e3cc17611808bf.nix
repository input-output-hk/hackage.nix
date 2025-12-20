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
    flags = {
      bignum-native = false;
      bignum-ffi = false;
      bignum-gmp = false;
      bignum-check = false;
      need-atomic = false;
    };
    package = {
      specVersion = "3.0";
      identifier = { name = "ghc-internal"; version = "9.1401.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "The GHC Developers <ghc-devs@haskell.org>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Basic libraries";
      description = "This package contains the implementation of GHC's standard libraries and is\nnot intended for use by end-users.\n.\nUsers should instead use either the @base@ or @ghc-experimental@ packages";
      buildType = "Configure";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."rts" or (errorHandler.buildDepError "rts")) ];
        libs = (pkgs.lib.optional (flags.need-atomic) (pkgs."atomic" or (errorHandler.sysDepError "atomic")) ++ pkgs.lib.optionals (system.isWindows) [
          (pkgs."wsock32" or (errorHandler.sysDepError "wsock32"))
          (pkgs."user32" or (errorHandler.sysDepError "user32"))
          (pkgs."shell32" or (errorHandler.sysDepError "shell32"))
          (pkgs."mingw32" or (errorHandler.sysDepError "mingw32"))
          (pkgs."kernel32" or (errorHandler.sysDepError "kernel32"))
          (pkgs."advapi32" or (errorHandler.sysDepError "advapi32"))
          (pkgs."mingwex" or (errorHandler.sysDepError "mingwex"))
          (pkgs."ws2_32" or (errorHandler.sysDepError "ws2_32"))
          (pkgs."shlwapi" or (errorHandler.sysDepError "shlwapi"))
          (pkgs."ole32" or (errorHandler.sysDepError "ole32"))
          (pkgs."rpcrt4" or (errorHandler.sysDepError "rpcrt4"))
          (pkgs."ntdll" or (errorHandler.sysDepError "ntdll"))
          (pkgs."ucrt" or (errorHandler.sysDepError "ucrt"))
        ]) ++ pkgs.lib.optionals (system.isLinux) [
          (pkgs."c" or (errorHandler.sysDepError "c"))
          (pkgs."m" or (errorHandler.sysDepError "m"))
        ];
        buildable = (if !flags.bignum-native && !flags.bignum-gmp && !flags.bignum-ffi
          then false
          else true) && (if flags.bignum-native && (flags.bignum-gmp || flags.bignum-ffi)
          then false
          else true) && (if flags.bignum-gmp && flags.bignum-ffi
          then false
          else true);
      };
    };
  }