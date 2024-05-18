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
      identifier = { name = "servant-multipart-client"; version = "0.12.2"; };
      license = "BSD-3-Clause";
      copyright = "2016-2017 Alp Mestanogullari, 2018-2019 Servant Contributors";
      maintainer = "alpmestan@gmail.com";
      author = "Alp Mestanogullari";
      homepage = "https://github.com/haskell-servant/servant-multipart#readme";
      url = "";
      synopsis = "multipart/form-data (e.g file upload) support for servant";
      description = "This package adds client-side support for file upload to the servant ecosystem.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."servant-multipart-api" or (errorHandler.buildDepError "servant-multipart-api"))
          (hsPkgs."http-media" or (errorHandler.buildDepError "http-media"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-client-core" or (errorHandler.buildDepError "servant-client-core"))
        ] ++ pkgs.lib.optionals (compiler.isGhcjs && true) [
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-client-core" or (errorHandler.buildDepError "servant-client-core"))
        ];
        buildable = true;
      };
      exes = {
        "upload" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."servant-multipart-api" or (errorHandler.buildDepError "servant-multipart-api"))
            (hsPkgs."servant-multipart-client" or (errorHandler.buildDepError "servant-multipart-client"))
            (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
            (hsPkgs."servant-client-core" or (errorHandler.buildDepError "servant-client-core"))
          ];
          buildable = true;
        };
        "server" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."servant-multipart" or (errorHandler.buildDepError "servant-multipart"))
            (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          ];
          buildable = if compiler.isGhcjs && true then false else true;
        };
      };
    };
  }