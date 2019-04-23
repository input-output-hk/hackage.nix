{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "lsp-test"; version = "0.5.1.3"; };
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
          (hsPkgs.base)
          (hsPkgs.haskell-lsp)
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.ansi-terminal)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-parse)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.Diff)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.parser-combinators)
          (hsPkgs.process)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.yi-rope)
          ] ++ (if system.isWindows
          then [ (hsPkgs.Win32) ]
          else [ (hsPkgs.unix) ]);
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.lens)
            (hsPkgs.haskell-lsp)
            (hsPkgs.lsp-test)
            (hsPkgs.data-default)
            (hsPkgs.aeson)
            (hsPkgs.unordered-containers)
            (hsPkgs.text)
            ];
          };
        };
      };
    }