{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "free-http"; version = "0.1.1.0"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."free" or ((hsPkgs.pkgs-errors).buildDepError "free"))
          (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }