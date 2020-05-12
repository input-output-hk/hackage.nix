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
      identifier = { name = "v4l2"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "claude@mathr.co.uk";
      author = "Claude Heiland-Allen";
      homepage = "https://gitorious.org/hsv4l2";
      url = "";
      synopsis = "interface to Video For Linux Two (V4L2)";
      description = "Higher-level interface to V4L2.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bindings-DSL" or (errorHandler.buildDepError "bindings-DSL"))
          (hsPkgs."bindings-libv4l2" or (errorHandler.buildDepError "bindings-libv4l2"))
          (hsPkgs."bindings-linux-videodev2" or (errorHandler.buildDepError "bindings-linux-videodev2"))
          (hsPkgs."bindings-posix" or (errorHandler.buildDepError "bindings-posix"))
          (hsPkgs."ioctl" or (errorHandler.buildDepError "ioctl"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      };
    }