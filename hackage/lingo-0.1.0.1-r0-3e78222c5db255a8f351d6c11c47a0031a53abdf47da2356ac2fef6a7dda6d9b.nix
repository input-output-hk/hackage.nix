{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "lingo"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "timothy.clem@gmail.com";
      author = "Timothy Clem";
      homepage = "https://github.com/tclem/lingo-haskell";
      url = "";
      synopsis = "File extension based programming language detection";
      description = "Lingo uses github/linguist's language registry to enable fast detection of a file path's programming langauge based on extension or filename.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.bytestring or (pkgs.buildPackages.bytestring))
        (hsPkgs.buildPackages.containers or (pkgs.buildPackages.containers))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath))
        (hsPkgs.buildPackages.text or (pkgs.buildPackages.text))
        (hsPkgs.buildPackages.yaml or (pkgs.buildPackages.yaml))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.raw-strings-qq)
          (hsPkgs.text)
          (hsPkgs.yaml)
          ];
        };
      tests = {
        "test" = { depends = [ (hsPkgs.base) (hsPkgs.lingo) (hsPkgs.hspec) ]; };
        };
      };
    }