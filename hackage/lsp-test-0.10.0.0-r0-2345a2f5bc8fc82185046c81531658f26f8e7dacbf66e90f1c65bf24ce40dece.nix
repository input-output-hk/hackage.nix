{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "lsp-test"; version = "0.10.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Luke Lau";
      maintainer = "luke_lau@icloud.com";
      author = "Luke Lau";
      homepage = "https://github.com/bubba/lsp-test#readme";
      url = "";
      synopsis = "Functional test framework for LSP servers.";
      description = "A test framework for writing tests against\n<https://microsoft.github.io/language-server-protocol/ Language Server Protocol servers>.\n@Language.Haskell.LSP.Test@ launches your server as a subprocess and allows you to simulate a session\ndown to the wire, and @Language.Haskell.LSP.Test@ can replay captured sessions from\n<haskell-lsp https://hackage.haskell.org/package/haskell-lsp>.\nIt's currently used for testing in <https://github.com/haskell/haskell-ide-engine haskell-ide-engine>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."haskell-lsp" or ((hsPkgs.pkgs-errors).buildDepError "haskell-lsp"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or ((hsPkgs.pkgs-errors).buildDepError "aeson-pretty"))
          (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."conduit-parse" or ((hsPkgs.pkgs-errors).buildDepError "conduit-parse"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."Diff" or ((hsPkgs.pkgs-errors).buildDepError "Diff"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."parser-combinators" or ((hsPkgs.pkgs-errors).buildDepError "parser-combinators"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          ] ++ (if system.isWindows
          then [
            (hsPkgs."Win32" or ((hsPkgs.pkgs-errors).buildDepError "Win32"))
            ]
          else [
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            ]);
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."haskell-lsp" or ((hsPkgs.pkgs-errors).buildDepError "haskell-lsp"))
            (hsPkgs."lsp-test" or ((hsPkgs.pkgs-errors).buildDepError "lsp-test"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }