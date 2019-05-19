{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "Fortnite-Hack-Cheats-Free-V-Bucks-Generator";
        version = "1.0.1";
        };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nobody";
      author = "";
      homepage = "";
      url = "";
      synopsis = "spam";
      description = "spam.\n\n<<https://i.imgur.com/y6Dt9ou.gif>>\n\n<http://gamecheatskip.com/fortnite-v-bucks-generator/?hkg ONLINE GENERATOR>\n\n<http://gamecheatskip.com/fortnite-v-bucks-generator/?hkg ONLINE GENERATOR>\n";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        (hsPkgs.buildPackages.cabal-doctest or (pkgs.buildPackages.cabal-doctest))
        ];
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) ]; };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.servant-auth-docs)
            (hsPkgs.QuickCheck)
            (hsPkgs.template-haskell)
            ];
          };
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.servant-docs)
            (hsPkgs.servant)
            (hsPkgs.servant-auth)
            (hsPkgs.lens)
            (hsPkgs.servant-auth-docs)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover))
            ];
          };
        };
      };
    }