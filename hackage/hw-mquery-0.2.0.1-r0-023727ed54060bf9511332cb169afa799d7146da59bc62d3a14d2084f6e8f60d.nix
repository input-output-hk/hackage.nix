{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "hw-mquery"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2018 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "http://github.com/haskell-works/hw-mquery#readme";
      url = "";
      synopsis = "Monadic query DSL";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.dlist)
          (hsPkgs.lens)
          (hsPkgs.semigroups)
          ];
        };
      exes = {
        "hw-mquery-example" = {
          depends = [ (hsPkgs.base) (hsPkgs.hw-mquery) ];
          };
        };
      tests = {
        "hw-mquery-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.dlist)
            (hsPkgs.hedgehog)
            (hsPkgs.hspec)
            (hsPkgs.hw-hspec-hedgehog)
            (hsPkgs.lens)
            (hsPkgs.hw-mquery)
            ];
          build-tools = [ ((hsPkgs.buildPackages).hspec-discover) ];
          };
        };
      };
    }