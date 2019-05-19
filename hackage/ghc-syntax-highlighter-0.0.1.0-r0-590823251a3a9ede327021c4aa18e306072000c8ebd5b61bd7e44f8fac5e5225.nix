{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { dev = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "ghc-syntax-highlighter"; version = "0.0.1.0"; };
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
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.ghc) (hsPkgs.text) ]; };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ghc-syntax-highlighter)
            (hsPkgs.text)
            (hsPkgs.hspec)
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover))
            ];
          };
        };
      };
    }