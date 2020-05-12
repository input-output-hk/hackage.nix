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
      specVersion = "1.8";
      identifier = { name = "selinux"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "stegeman@gmail.com";
      author = "Luite Stegeman";
      homepage = "https://github.com/luite/selinux";
      url = "";
      synopsis = "SELinux bindings";
      description = "Haskell bindings for the SELinux API";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
        libs = [ (pkgs."selinux" or (errorHandler.sysDepError "selinux")) ];
        buildable = true;
        };
      };
    }