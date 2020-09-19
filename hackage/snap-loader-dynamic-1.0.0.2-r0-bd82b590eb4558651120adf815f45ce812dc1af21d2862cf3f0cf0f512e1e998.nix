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
      specVersion = "1.10";
      identifier = { name = "snap-loader-dynamic"; version = "1.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "snap@snapframework.com";
      author = "Carl Howells";
      homepage = "http://snapframework.com/";
      url = "";
      synopsis = "Snap dynamic loader";
      description = "Snap Framework dynamic code loader for development mode";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory-tree" or (errorHandler.buildDepError "directory-tree"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."snap-core" or (errorHandler.buildDepError "snap-core"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ] ++ [
          (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
          ]) ++ (if compiler.isGhc && (compiler.version).ge "7.6.0"
          then [
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ]
          else [
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            ])) ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
        buildable = true;
        };
      };
    }