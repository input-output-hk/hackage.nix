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
    flags = { developer = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "HFuse"; version = "0.2.4.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Montez Fitzpatrick <montezf@gmail.com>";
      author = "Jeremy Bobbio";
      homepage = "https://github.com/m15k/hfuse";
      url = "";
      synopsis = "HFuse is a binding for the Linux FUSE library.";
      description = "Bindings for the FUSE library, compatible with Linux, OSXFUSE and FreeBSD.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        libs = if system.isOsx
          then [ (pkgs."osxfuse" or (errorHandler.sysDepError "osxfuse")) ]
          else [ (pkgs."fuse" or (errorHandler.sysDepError "fuse")) ];
        buildable = true;
      };
      exes = {
        "HelloFS" = {
          depends = pkgs.lib.optionals (flags.developer) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HFuse" or (errorHandler.buildDepError "HFuse"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = if flags.developer then true else false;
        };
      };
    };
  }