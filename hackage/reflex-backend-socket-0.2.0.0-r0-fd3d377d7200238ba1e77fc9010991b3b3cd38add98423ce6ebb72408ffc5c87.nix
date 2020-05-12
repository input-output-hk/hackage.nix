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
      identifier = { name = "reflex-backend-socket"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018-2019, Commonwealth Scientific and Industrial Research Organisation";
      maintainer = "dave.laing.80@gmail.com, jack.kelly@data61.csiro.au";
      author = "Dave Laing";
      homepage = "https://github.com/qfpl/reflex-backend-socket/";
      url = "";
      synopsis = "Reflex bindings for TCP sockets";
      description = "<<https://raw.githubusercontent.com/qfpl/assets/master/data61-transparent-bg.png>>\n\nreflex-backend-socket provides functions to handle sockets using\nReflex @Event@s. Sending\\/receiving\\/waiting\\/accepting are all\nperformed on background threads.\n\nThe most important function in this library is\n@Reflex.Backend.Socket.socket@, which wraps a @Socket@ to process\n@Event t ByteString@s.\n\nThat @Socket@ can come from:\n\n1. @Reflex.Backend.Socket.Accept.accept@, if you're making a server;\n2. @Reflex.Backend.Socket.Connect.connect@, if you're making a client; or\n3. Your favourite networking library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."reflex" or (errorHandler.buildDepError "reflex"))
          (hsPkgs."semialign" or (errorHandler.buildDepError "semialign"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."these" or (errorHandler.buildDepError "these"))
          ];
        buildable = true;
        };
      exes = {
        "example-server" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."reflex" or (errorHandler.buildDepError "reflex"))
            (hsPkgs."reflex-backend-socket" or (errorHandler.buildDepError "reflex-backend-socket"))
            (hsPkgs."reflex-basic-host" or (errorHandler.buildDepError "reflex-basic-host"))
            ];
          buildable = true;
          };
        "example-client" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."reflex" or (errorHandler.buildDepError "reflex"))
            (hsPkgs."reflex-backend-socket" or (errorHandler.buildDepError "reflex-backend-socket"))
            (hsPkgs."reflex-basic-host" or (errorHandler.buildDepError "reflex-basic-host"))
            ];
          buildable = true;
          };
        "example-others" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."reflex" or (errorHandler.buildDepError "reflex"))
            (hsPkgs."reflex-backend-socket" or (errorHandler.buildDepError "reflex-backend-socket"))
            (hsPkgs."reflex-basic-host" or (errorHandler.buildDepError "reflex-basic-host"))
            (hsPkgs."witherable" or (errorHandler.buildDepError "witherable"))
            ];
          buildable = true;
          };
        };
      };
    }