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
        name = "haskell-rules";
        version = "0.1.0.1";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Sophie Taylor sophie@spacekitteh.moe";
      author = "Steve Kollmansberger and Martin Erwig";
      homepage = "";
      url = "";
      synopsis = "A DSL for expressing natural deduction rules in Haskell.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "haskell-rules" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.syb)
        ];
      };
    };
  }