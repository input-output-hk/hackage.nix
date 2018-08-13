{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "termbox-bindings";
        version = "0.1.0.5";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "neuman.vong@gmail.com";
      author = "Neuman Vong";
      homepage = "https://github.com/luciferous/termbox-bindings";
      url = "";
      synopsis = "Bindings to the Termbox library";
      description = "Bindings to the Termbox library.";
      buildType = "Simple";
    };
    components = {
      "termbox-bindings" = {
        depends  = [ (hsPkgs.base) ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs)
        ];
      };
      exes = {
        "example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.termbox-bindings)
          ];
        };
      };
    };
  }