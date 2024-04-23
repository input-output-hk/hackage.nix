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
      identifier = { name = "sarsi"; version = "0.0.0.4"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "alois.cochard@gmail.com";
      author = "Alois Cochard";
      homepage = "http://github.com/aloiscochard/sarsi";
      url = "";
      synopsis = "A universal quickfix toolkit and his protocol.";
      description = "Usage overview can be found in the <http://github.com/aloiscochard/sarsi#sarsi README>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."machines" or (errorHandler.buildDepError "machines"))
          (hsPkgs."machines-binary" or (errorHandler.buildDepError "machines-binary"))
          (hsPkgs."machines-process" or (errorHandler.buildDepError "machines-process"))
          (hsPkgs."machines-io" or (errorHandler.buildDepError "machines-io"))
          (hsPkgs."msgpack" or (errorHandler.buildDepError "msgpack"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      exes = {
        "sarsi" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sarsi" or (errorHandler.buildDepError "sarsi"))
          ];
          buildable = true;
        };
        "sarsi-hs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sarsi" or (errorHandler.buildDepError "sarsi"))
            (hsPkgs."machines" or (errorHandler.buildDepError "machines"))
            (hsPkgs."machines-io" or (errorHandler.buildDepError "machines-io"))
            (hsPkgs."machines-process" or (errorHandler.buildDepError "machines-process"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."fsnotify" or (errorHandler.buildDepError "fsnotify"))
          ];
          buildable = true;
        };
        "sarsi-nvim" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sarsi" or (errorHandler.buildDepError "sarsi"))
            (hsPkgs."machines" or (errorHandler.buildDepError "machines"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."machines" or (errorHandler.buildDepError "machines"))
            (hsPkgs."machines-binary" or (errorHandler.buildDepError "machines-binary"))
            (hsPkgs."machines-io" or (errorHandler.buildDepError "machines-io"))
            (hsPkgs."msgpack" or (errorHandler.buildDepError "msgpack"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
          buildable = true;
        };
        "sarsi-sbt" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sarsi" or (errorHandler.buildDepError "sarsi"))
            (hsPkgs."machines" or (errorHandler.buildDepError "machines"))
            (hsPkgs."machines-io" or (errorHandler.buildDepError "machines-io"))
            (hsPkgs."machines-process" or (errorHandler.buildDepError "machines-process"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }