{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.22";
      identifier = { name = "hw-mquery"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "http://github.com/haskell-works/hw-mquery#readme";
      url = "";
      synopsis = "Conduits for tokenizing streams.";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.ansi-wl-pprint) (hsPkgs.dlist) ];
        };
      exes = {
        "hw-mquery-example" = {
          depends = [ (hsPkgs.base) (hsPkgs.hw-mquery) ];
          };
        };
      tests = {
        "hw-mquery-test" = {
          depends = [ (hsPkgs.base) (hsPkgs.hspec) (hsPkgs.QuickCheck) ];
          };
        };
      };
    }