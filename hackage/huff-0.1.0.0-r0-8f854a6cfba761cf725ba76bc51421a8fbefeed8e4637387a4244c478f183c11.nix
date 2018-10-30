{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "huff";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "awesomelyawesome@gmail.com";
      author = "Trevor Elliott";
      homepage = "https://github.com/elliottt/huff";
      url = "";
      synopsis = "A fast-foward-based planner";
      description = "An implementation of the fast-forward planner, as a quasi-quoter.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.alex-tools)
          (hsPkgs.containers)
          (hsPkgs.heaps)
          (hsPkgs.hashable)
          (hsPkgs.unordered-containers)
          (hsPkgs.text)
          (hsPkgs.array)
          (hsPkgs.template-haskell)
        ];
        build-tools = [
          (hsPkgs.buildPackages.alex)
        ];
      };
      exes = {
        "blocksWorld" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.huff)
          ];
        };
      };
    };
  }