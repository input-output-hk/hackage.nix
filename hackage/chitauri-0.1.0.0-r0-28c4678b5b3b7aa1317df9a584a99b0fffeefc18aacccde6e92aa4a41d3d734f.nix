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
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Author name here";
      maintainer = "example@example.com";
      author = "Author name here";
      homepage = "https://github.com/githubuser/chitauri#readme";
      url = "";
      synopsis = "Initial project template from stack";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.generic-trie)
          (hsPkgs.either-unwrap)
        ];
      };
      exes = {
        "chitauri" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.chitauri)
            (hsPkgs.either-unwrap)
            (hsPkgs.generic-trie)
            (hsPkgs.haskeline)
            (hsPkgs.digits)
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