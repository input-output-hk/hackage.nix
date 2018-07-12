{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      dev = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "ghc-syntax-highlighter";
          version = "0.0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Mark Karpov <markkarpov92@gmail.com>";
        author = "Mark Karpov <markkarpov92@gmail.com>";
        homepage = "https://github.com/mrkkrp/ghc-syntax-highlighter";
        url = "";
        synopsis = "Correct syntax highlighter for Haskell using GHC itself";
        description = "Correct syntax highlighter for Haskell using GHC itself.";
        buildType = "Simple";
      };
      components = {
        "ghc-syntax-highlighter" = {
          depends  = [
            hsPkgs.base
            hsPkgs.ghc
            hsPkgs.text
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.ghc-syntax-highlighter
              hsPkgs.text
              hsPkgs.hspec
            ];
            build-tools = [
              hsPkgs.buildPackages.hspec-discover
            ];
          };
        };
      };
    }