{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "fakefs"; version = "0.2.0.1"; };
      license = "Apache-2.0";
      copyright = "2019 Yuji Yamamoto";
      maintainer = "whosekiteneverfly@gmail.com";
      author = "Yuji Yamamoto";
      homepage = "https://gitlab.com/igrep/haskell-fakefs#readme";
      url = "";
      synopsis = "Extensible fake file system for testing.";
      description = "See <https://gitlab.com/igrep/haskell-fakefs#readme>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.mtl) (hsPkgs.containers) ];
        };
      tests = {
        "fakefs-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.fakefs)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      };
    }