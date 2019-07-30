{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "dhall-lsp-server"; version = "1.0.0"; };
      license = "MIT";
      copyright = "2019 panaeon";
      maintainer = "Gabriel Gonzalez";
      author = "panaeon";
      homepage = "https://github.com/dhall-lang/dhall-haskell/dhall-lsp-server#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/githubuser/dhall-lsp-server#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.cryptonite)
          (hsPkgs.data-default)
          (hsPkgs.dhall)
          (hsPkgs.dhall-json)
          (hsPkgs.dotgen)
          (hsPkgs.filepath)
          (hsPkgs.haskell-lsp)
          (hsPkgs.hslogger)
          (hsPkgs.lens)
          (hsPkgs.lens-family-core)
          (hsPkgs.megaparsec)
          (hsPkgs.mtl)
          (hsPkgs.network-uri)
          (hsPkgs.optparse-applicative)
          (hsPkgs.prettyprinter)
          (hsPkgs.sorted-list)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.uri-encode)
          (hsPkgs.yi-rope)
          ];
        };
      exes = {
        "dhall-lsp-server" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.dhall)
            (hsPkgs.dhall-lsp-server)
            (hsPkgs.filepath)
            (hsPkgs.haskell-lsp)
            (hsPkgs.hslogger)
            (hsPkgs.lens)
            (hsPkgs.lens-family-core)
            (hsPkgs.megaparsec)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.prettyprinter)
            (hsPkgs.sorted-list)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.yi-rope)
            ];
          };
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.doctest)
            ];
          };
        };
      };
    }