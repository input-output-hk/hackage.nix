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
      identifier = { name = "servant-nix"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2018 Servant Contributors";
      maintainer = "haskell-servant-maintainers@googlegroups.com";
      author = "Servant Contributors";
      homepage = "http://haskell-servant.readthedocs.org/";
      url = "";
      synopsis = "Servant Nix content-type";
      description = "Servant Nix bindings.\n\nProvides @MineRender@ and @MimeUnrender@ instances.\nSo you can accept and return Nix expressions, with the help\nof the hnix library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."http-media" or (errorHandler.buildDepError "http-media"))
          (hsPkgs."hnix" or (errorHandler.buildDepError "hnix"))
          ];
        buildable = true;
        };
      tests = {
        "example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hnix" or (errorHandler.buildDepError "hnix"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."servant-nix" or (errorHandler.buildDepError "servant-nix"))
            (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
            (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            ];
          buildable = true;
          };
        };
      };
    }