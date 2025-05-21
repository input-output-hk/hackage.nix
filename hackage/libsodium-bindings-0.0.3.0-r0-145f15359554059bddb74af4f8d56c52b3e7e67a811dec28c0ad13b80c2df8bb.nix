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
    flags = { pkg-config = false; homebrew = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "libsodium-bindings"; version = "0.0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "The Haskell Cryptography contributors";
      author = "Hécate Moonlight, Koz Ross";
      homepage = "https://github.com/haskell-cryptography/libsodium-bindings";
      url = "";
      synopsis = "FFI bindings to libsodium";
      description = "This library embeds FFI bindings to the stable version of libsodium 1.0.18.\nThe interface exposed by this library is kept close to the C library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = pkgs.lib.optional (!flags.pkg-config) (pkgs."sodium" or (errorHandler.sysDepError "sodium"));
        pkgconfig = pkgs.lib.optional (flags.pkg-config) (pkgconfPkgs."libsodium" or (errorHandler.pkgConfDepError "libsodium"));
        buildable = true;
      };
    };
  }