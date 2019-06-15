{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "butcher"; version = "1.3.2.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2016-2019 Lennart Spitzner";
      maintainer = "Lennart Spitzner <hexagoxel@hexagoxel.de>";
      author = "Lennart Spitzner";
      homepage = "https://github.com/lspitzner/butcher/";
      url = "";
      synopsis = "Chops a command or program invocation into digestable pieces.";
      description = "See the <https://github.com/lspitzner/butcher/blob/master/README.md README> (it is properly formatted on github).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.free)
          (hsPkgs.unsafe)
          (hsPkgs.microlens)
          (hsPkgs.microlens-th)
          (hsPkgs.multistate)
          (hsPkgs.pretty)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.extra)
          (hsPkgs.void)
          (hsPkgs.bifunctors)
          (hsPkgs.deque)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.butcher)
            (hsPkgs.free)
            (hsPkgs.unsafe)
            (hsPkgs.microlens)
            (hsPkgs.microlens-th)
            (hsPkgs.multistate)
            (hsPkgs.pretty)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.extra)
            (hsPkgs.deque)
            (hsPkgs.hspec)
            ];
          };
        };
      };
    }