let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."free" or (buildDepError "free"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        };
      };
    }