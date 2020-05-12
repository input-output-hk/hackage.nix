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
      specVersion = "1.6";
      identifier = { name = "cpython"; version = "3.1.3"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "John Millikin <jmillikin@gmail.com>";
      author = "John Millikin <jmillikin@gmail.com>";
      homepage = "https://john-millikin.com/software/haskell-python/";
      url = "";
      synopsis = "Bindings for libpython";
      description = "These bindings allow Haskell code to call CPython code. It is not\ncurrently possible to call Haskell code from CPython, but this feature\nis planned.\n\nPlease note that this library uses a somewhat abnormal versioning scheme;\nthe first two version numbers are the CPython version, the third is the\npackage's version. For example, the package version 3.1.1 binds to CPython\n3.1, and has a package version of 1.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        pkgconfig = [
          (pkgconfPkgs."python-3.1" or (errorHandler.pkgConfDepError "python-3.1"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      };
    }