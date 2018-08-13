{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      examples = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hlwm";
        version = "0.1.0.1";
      };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "<hpd@hpdeifel.de>";
      author = "Hans-Peter Deifel";
      homepage = "";
      url = "";
      synopsis = "Bindings to the herbstluftwm window manager";
      description = "A client-side IPC implementation for herbstluftwm.";
      buildType = "Simple";
    };
    components = {
      "hlwm" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.X11)
          (hsPkgs.transformers)
          (hsPkgs.monads-tf)
          (hsPkgs.stm)
          (hsPkgs.unix)
        ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
      exes = {
        "hherbstclient" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.X11)
            (hsPkgs.transformers)
            (hsPkgs.monads-tf)
            (hsPkgs.stm)
            (hsPkgs.unix)
            (hsPkgs.hlwm)
          ];
          build-tools = [
            (hsPkgs.buildPackages.hsc2hs)
          ];
        };
      };
    };
  }