{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      butcher-dev = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "butcher";
        version = "1.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2016-2017 Lennart Spitzner";
      maintainer = "lsp@informatik.uni-kiel.de";
      author = "Lennart Spitzner";
      homepage = "https://github.com/lspitzner/butcher/";
      url = "";
      synopsis = "Chops a command or program invocation into digestable pieces.";
      description = "See the README (it is properly formatted on github)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.free)
          (hsPkgs.unsafe)
          (hsPkgs.microlens)
          (hsPkgs.microlens-th)
          (hsPkgs.multistate)
          (hsPkgs.pretty)
          (hsPkgs.containers)
          (hsPkgs.either)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.extra)
          (hsPkgs.void)
          (hsPkgs.bifunctors)
          (hsPkgs.deque)
        ] ++ pkgs.lib.optional (flags.butcher-dev) (hsPkgs.hspec);
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.butcher)
            (hsPkgs.free)
            (hsPkgs.unsafe)
            (hsPkgs.microlens)
            (hsPkgs.microlens-th)
            (hsPkgs.multistate)
            (hsPkgs.pretty)
            (hsPkgs.containers)
            (hsPkgs.either)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.extra)
            (hsPkgs.deque)
          ] ++ pkgs.lib.optional (flags.butcher-dev) (hsPkgs.hspec);
        };
      };
    };
  }