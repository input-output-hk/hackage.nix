{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "haskell-tools-demo"; version = "0.7.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "kelemzol@elte.hu";
      author = "Zoltán Kelemen";
      homepage = "https://github.com/haskell-tools/haskell-tools";
      url = "";
      synopsis = "A web-based demo for Haskell-tools Refactor.";
      description = "Allows websocket clients to connect and performs refactorings on demand. The clients maintain a continous connection with the server, sending changes in the source files. When a refactor request is received, it performs the changes and sends the modified source files to the client.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          (hsPkgs."websockets" or ((hsPkgs.pkgs-errors).buildDepError "websockets"))
          (hsPkgs."wai-websockets" or ((hsPkgs.pkgs-errors).buildDepError "wai-websockets"))
          (hsPkgs."references" or ((hsPkgs.pkgs-errors).buildDepError "references"))
          (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
          (hsPkgs."ghc-paths" or ((hsPkgs.pkgs-errors).buildDepError "ghc-paths"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."haskell-tools-ast" or ((hsPkgs.pkgs-errors).buildDepError "haskell-tools-ast"))
          (hsPkgs."haskell-tools-backend-ghc" or ((hsPkgs.pkgs-errors).buildDepError "haskell-tools-backend-ghc"))
          (hsPkgs."haskell-tools-prettyprint" or ((hsPkgs.pkgs-errors).buildDepError "haskell-tools-prettyprint"))
          (hsPkgs."haskell-tools-refactor" or ((hsPkgs.pkgs-errors).buildDepError "haskell-tools-refactor"))
          ];
        buildable = true;
        };
      exes = {
        "ht-demo" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haskell-tools-demo" or ((hsPkgs.pkgs-errors).buildDepError "haskell-tools-demo"))
            ];
          buildable = true;
          };
        };
      tests = {
        "haskell-tools-demo-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."websockets" or ((hsPkgs.pkgs-errors).buildDepError "websockets"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."haskell-tools-demo" or ((hsPkgs.pkgs-errors).buildDepError "haskell-tools-demo"))
            ];
          buildable = true;
          };
        };
      };
    }