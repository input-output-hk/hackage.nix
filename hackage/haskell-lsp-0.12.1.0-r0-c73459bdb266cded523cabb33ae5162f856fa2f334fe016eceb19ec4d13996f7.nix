{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.22";
      identifier = { name = "haskell-lsp"; version = "0.12.1.0"; };
      license = "MIT";
      copyright = "Alan Zimmerman, 2016-2019";
      maintainer = "alan.zimm@gmail.com";
      author = "Alan Zimmerman";
      homepage = "https://github.com/alanz/haskell-lsp";
      url = "";
      synopsis = "Haskell library for the Microsoft Language Server Protocol";
      description = "An implementation of the types, and basic message server to\nallow language implementors to support the Language Server\nProtocol for their specific language.\n\nAn example of this is for Haskell via the Haskell IDE\nEngine, at https://github.com//haskell-ide-engine";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.async)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.data-default)
          (hsPkgs.filepath)
          (hsPkgs.hslogger)
          (hsPkgs.hashable)
          (hsPkgs.haskell-lsp-types)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.network-uri)
          (hsPkgs.parsec)
          (hsPkgs.rope-utf16-splay)
          (hsPkgs.sorted-list)
          (hsPkgs.stm)
          (hsPkgs.temporary)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          ];
        };
      exes = {
        "lsp-hello" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.data-default)
            (hsPkgs.filepath)
            (hsPkgs.hslogger)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.network-uri)
            (hsPkgs.parsec)
            (hsPkgs.rope-utf16-splay)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.haskell-lsp)
            ];
          };
        };
      tests = {
        "haskell-lsp-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hashable)
            (hsPkgs.haskell-lsp)
            (hsPkgs.hspec)
            (hsPkgs.lens)
            (hsPkgs.network-uri)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.rope-utf16-splay)
            (hsPkgs.sorted-list)
            (hsPkgs.stm)
            (hsPkgs.text)
            ];
          build-tools = [ ((hsPkgs.buildPackages).hspec-discover) ];
          };
        };
      };
    }