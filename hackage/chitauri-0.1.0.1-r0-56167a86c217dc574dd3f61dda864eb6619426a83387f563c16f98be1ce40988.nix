{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "chitauri";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Marcus Buffett";
      maintainer = "marcusbuffett@me.com";
      author = "Marcus Buffett";
      homepage = "https://github.com/marcusbuffett/chitauri";
      url = "";
      synopsis = "Helper for the Major System";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      exes = {
        "chitauri" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.either-unwrap)
            (hsPkgs.generic-trie)
            (hsPkgs.haskeline)
            (hsPkgs.digits)
            (hsPkgs.parsec)
            (hsPkgs.generic-trie)
            (hsPkgs.either-unwrap)
          ];
        };
      };
      tests = {
        "chitauri-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.chitauri)
          ];
        };
      };
    };
  }