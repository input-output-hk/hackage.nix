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
      identifier = { name = "free-http"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "vilevin@gmail.com";
      author = "Aaron Levin";
      homepage = "https://github.com/aaronlevin/free-http";
      url = "";
      synopsis = "An HTTP Client based on Free Monads.";
      description = "`free-http` is an http-client based on Free Monads.\n`free-http` exposes a Free Monad to express standard http\nverbs as well as several backends to interpet programs\nwritten in the free monad using various http clients\n(currently: a pure client, an `http-client`-backed client,\nand a random client).\nTo use free-http, simply:\n1. Import Network.HTTP.Client.Free to use the library.\n2. Choose your base request type by defining your own\ninstance of the `RequestType` type family or importing\none from an interpreter. E.g.\ndata MyClient\ntype instance RequestType MyClient = Request\n(or)\nimport Network.HTTP.Free.Client.HttpClient (HttpClient)\n3. Choose your base response type by defining your own\ninstance of the `ResponseTYpe` type family or importing\none from an interpreter. E.g.\ntype instance ResponseType MyClient = Response ByteString\n(or)\nimport Network.HTTP.Free.Client.HttpClient (HttpClient)\n4. Write a program in the 'FreeHttp MyClient m a' free monad.\n5. Import an interpreter, such as 'HttpClient'\nimport Network.HTTP.Free.Client.HttpClient\n6. Run your program against the interpreter:\nrunHttp (myProgram :: FreeHttp MyClient IO String)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }