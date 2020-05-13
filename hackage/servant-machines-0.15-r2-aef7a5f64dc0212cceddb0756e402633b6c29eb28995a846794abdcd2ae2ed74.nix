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
      identifier = { name = "servant-machines"; version = "0.15"; };
      license = "BSD-3-Clause";
      copyright = "2018-2019 Servant Contributors";
      maintainer = "haskell-servant-maintainers@googlegroups.com";
      author = "Servant Contributors";
      homepage = "http://docs.servant.dev/";
      url = "";
      synopsis = "Servant Stream support for machines";
      description = "Servant Stream support for machines.\n\nProvides 'ToSourceIO' and 'FromSourceIO' instances for 'MachineT'.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."machines" or (errorHandler.buildDepError "machines"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          ];
        buildable = true;
        };
      tests = {
        "example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."http-media" or (errorHandler.buildDepError "http-media"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."machines" or (errorHandler.buildDepError "machines"))
            (hsPkgs."servant-machines" or (errorHandler.buildDepError "servant-machines"))
            (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
            (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            ];
          buildable = true;
          };
        };
      };
    }