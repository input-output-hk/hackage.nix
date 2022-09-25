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
    flags = { ghc-bundled-libffi = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "libffi"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "Remi Turk 2008-2009";
      maintainer = "remi.turk@gmail.com";
      author = "Remi Turk";
      homepage = "http://haskell.org/haskellwiki/Library/libffi";
      url = "";
      synopsis = "A binding to libffi";
      description = "A binding to libffi, allowing C functions of types only known at runtime to be called from Haskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        pkgconfig = (pkgs.lib).optional (!flags.ghc-bundled-libffi) (pkgconfPkgs."libffi" or (errorHandler.pkgConfDepError "libffi"));
        buildable = true;
        };
      };
    }