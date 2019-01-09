{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "cabal2nix"; version = "1.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Peter Simons";
      maintainer = "Peter Simons <simons@cryp.to>";
      author = "Peter Simons <simons@cryp.to>";
      homepage = "http://github.com/peti/cabal2nix";
      url = "";
      synopsis = "Convert Cabal files into Nix build instructions";
      description = "This utility converts Cabal files into Nix build\ninstructions. The commandline syntax is:\n\n> cabal2nix cabal-file-uri [sha256-hash]\n\nThe first argument is the path to the cabal\nfile. That path can be an HTTP URL or local file\npath. For example:\n\n> cabal2nix.hs http://hackage.haskell.org/packages/archive/cabal2nix/1.2/cabal2nix.cabal 0m7zgsd1pxmw504xpvl7dg25ana6dkk1mcyjj4c1wdbkvhvbn3gn\n> cabal2nix.hs file:///tmp/cabal2nix.cabal 0m7zgsd1pxmw504xpvl7dg25ana6dkk1mcyjj4c1wdbkvhvbn3gn\n> cabal2nix.hs /tmp/cabal2nix.cabal 0m7zgsd1pxmw504xpvl7dg25ana6dkk1mcyjj4c1wdbkvhvbn3gn\n\nThe second argument -- the hash of the source\ntarball -- is optional. If it's not specified,\ncabal2nix calls @nix-prefetch-url@ to determine\nthe hash automatically. This causes network\ntraffic, obviously.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cabal2nix" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.process)
            (hsPkgs.HTTP)
            ];
          };
        };
      };
    }