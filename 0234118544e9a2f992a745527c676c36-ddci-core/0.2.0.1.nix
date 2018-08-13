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
      specVersion = "1.6";
      identifier = {
        name = "ddci-core";
        version = "0.2.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "benl@ouroborus.net";
      author = "Ben Lippmeier";
      homepage = "http://disciple.ouroborus.net";
      url = "";
      synopsis = "Disciple Core language interactive interpreter.";
      description = "DDCi-core is a user-facing interpreter that can type-check,\ntransform and evaluate expressions.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "ddci-core" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.haskeline)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.ddc-base)
            (hsPkgs.ddc-core)
            (hsPkgs.ddc-core-eval)
            (hsPkgs.ddc-core-simpl)
          ];
        };
      };
    };
  }