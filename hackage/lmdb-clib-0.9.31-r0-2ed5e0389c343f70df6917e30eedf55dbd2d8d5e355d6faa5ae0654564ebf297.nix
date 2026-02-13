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
    flags = { clang = false; asan = false; opt = true; };
    package = {
      specVersion = "3.4";
      identifier = { name = "lmdb-clib"; version = "0.9.31"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2011-2021 Howard Chu, Symas Corp.";
      maintainer = "Simon Marlow <marlowsd@gmail.com>";
      author = "Howard Chu, Symas Corporation.";
      homepage = "https://www.symas.com/mdb";
      url = "";
      synopsis = "Lightning Memory-Mapped Database";
      description = "Cabal wrapper around the LMDB C library, with one tweak to increase\nthe default max key size from 511 bytes to ~2kB.";
      buildType = "Simple";
    };
    components = { "library" = { buildable = true; }; };
  }