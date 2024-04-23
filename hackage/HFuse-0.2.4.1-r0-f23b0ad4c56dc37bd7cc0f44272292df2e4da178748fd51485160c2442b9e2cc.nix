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
      identifier = { name = "HFuse"; version = "0.2.4.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Paul van der Walt <cabal@denknerd.org>";
      author = "Jeremy Bobbio";
      homepage = "https://github.com/toothbrush/hfuse";
      url = "";
      synopsis = "HFuse is a binding for the Linux FUSE library.";
      description = "Bindings for the FUSE library, compatible with OSXFUSE.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        libs = [ (pkgs."fuse" or (errorHandler.sysDepError "fuse")) ];
        buildable = true;
      };
    };
  }