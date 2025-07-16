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
    flags = { opt = false; clang = false; bundled-folly = true; };
    package = {
      specVersion = "3.4";
      identifier = { name = "folly-clib"; version = "20250713.1537"; };
      license = "Apache-2.0";
      copyright = "Copyright (c) Meta Platforms, Inc. and affiliates.";
      maintainer = "marlowsd@gmail.com";
      author = "Simon Marlow";
      homepage = "https://github.com/facebook/folly";
      url = "";
      synopsis = "The folly C++ library from Meta";
      description = "The folly C++ library from Meta, wrapped in a Cabal package so that\nit can be easily depended on by other packages. Having a Cabal\npackage also means that we can version the library, which is useful\nas there are no versioned upstream releases.\n\nAlso included is @fast_float-8.0.0@ because it is a dependency of\nfolly and this version is not widely available as a distro package\nyet.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        libs = pkgs.lib.optionals (!!flags.bundled-folly) [
          (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
          (pkgs."boost_filesystem" or (errorHandler.sysDepError "boost_filesystem"))
          (pkgs."boost_program_options" or (errorHandler.sysDepError "boost_program_options"))
          (pkgs."boost_context" or (errorHandler.sysDepError "boost_context"))
        ];
        pkgconfig = if !flags.bundled-folly
          then [
            (pkgconfPkgs."libfolly" or (errorHandler.pkgConfDepError "libfolly"))
          ]
          else [
            (pkgconfPkgs."fmt" or (errorHandler.pkgConfDepError "fmt"))
            (pkgconfPkgs."libglog" or (errorHandler.pkgConfDepError "libglog"))
            (pkgconfPkgs."openssl" or (errorHandler.pkgConfDepError "openssl"))
            (pkgconfPkgs."snappy" or (errorHandler.pkgConfDepError "snappy"))
            (pkgconfPkgs."libunwind" or (errorHandler.pkgConfDepError "libunwind"))
          ];
        buildable = true;
      };
    };
  }