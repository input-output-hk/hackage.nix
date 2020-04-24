{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "haskell-tools-demo"; version = "0.2.0.0"; };
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
      exes = {
        "haskell-tools-demo" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."references" or ((hsPkgs.pkgs-errors).buildDepError "references"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."ghc-paths" or ((hsPkgs.pkgs-errors).buildDepError "ghc-paths"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
            (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
            (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
            (hsPkgs."websockets" or ((hsPkgs.pkgs-errors).buildDepError "websockets"))
            (hsPkgs."wai-websockets" or ((hsPkgs.pkgs-errors).buildDepError "wai-websockets"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."haskell-tools-ast" or ((hsPkgs.pkgs-errors).buildDepError "haskell-tools-ast"))
            (hsPkgs."haskell-tools-ast-fromghc" or ((hsPkgs.pkgs-errors).buildDepError "haskell-tools-ast-fromghc"))
            (hsPkgs."haskell-tools-ast-trf" or ((hsPkgs.pkgs-errors).buildDepError "haskell-tools-ast-trf"))
            (hsPkgs."haskell-tools-prettyprint" or ((hsPkgs.pkgs-errors).buildDepError "haskell-tools-prettyprint"))
            (hsPkgs."haskell-tools-refactor" or ((hsPkgs.pkgs-errors).buildDepError "haskell-tools-refactor"))
            ];
          buildable = true;
          };
        };
      };
    }