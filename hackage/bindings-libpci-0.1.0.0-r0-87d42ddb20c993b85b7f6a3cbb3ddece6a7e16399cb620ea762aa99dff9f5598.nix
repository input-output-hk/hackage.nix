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
      specVersion = "2.4";
      identifier = { name = "bindings-libpci"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2020 David Cox";
      maintainer = "dopamane <standard.semiconductor@gmail.com>";
      author = "dopamane";
      homepage = "";
      url = "";
      synopsis = "Low level bindings to libpci";
      description = "Low level bindings to libpci:\n\n<https://github.com/pciutils/pciutils>\n\nThis package uses @bindings-DSL@\nand conforms to its naming convention.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bindings-DSL" or (errorHandler.buildDepError "bindings-DSL"))
          ];
        libs = (pkgs.lib).optional (system.isWindows) (pkgs."libpci" or (errorHandler.sysDepError "libpci"));
        pkgconfig = (pkgs.lib).optional (!system.isWindows) (pkgconfPkgs."libpci" or (errorHandler.pkgConfDepError "libpci"));
        buildable = true;
        };
      };
    }