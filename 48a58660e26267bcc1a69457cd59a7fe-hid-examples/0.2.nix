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
        name = "hid-examples";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Vitaly Bragilevsky <vit.bragilevsky@gmail.com>";
      author = "Vitaly Bragilevsky";
      homepage = "https://github.com/bravit/hid-examples#readme";
      url = "";
      synopsis = "Examples to accompany the book \"Haskell in Depth\"";
      description = "This package provides source code examples which accompany the book \"Haskell in Depth\" by Vitaly Bragilevsky (Manning Publications 2019). You may want to get this package via @cabal get hid-examples@ and explore its content.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "dicegame" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.random)
          ];
        };
        "filecount" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.extra)
          ];
        };
        "gcd" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
          ];
        };
        "genSQL" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.text)
          ];
        };
        "ioref" = {
          depends  = [ (hsPkgs.base) ];
        };
        "locator" = {
          depends  = [ (hsPkgs.base) ];
        };
        "maybe" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.safe)
          ];
        };
        "reader" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
          ];
        };
        "showexpr" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hint)
          ];
        };
        "shunting-yard" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
          ];
        };
        "stockquotes" = {
          depends  = [
            (hsPkgs.Chart)
            (hsPkgs.Chart-diagrams)
            (hsPkgs.base)
            (hsPkgs.blaze-html)
            (hsPkgs.bytestring)
            (hsPkgs.cassava)
            (hsPkgs.fmt)
            (hsPkgs.optparse-applicative)
            (hsPkgs.safe)
            (hsPkgs.text)
            (hsPkgs.time)
          ];
        };
        "stref" = {
          depends  = [ (hsPkgs.base) ];
        };
        "vocab1" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
          ];
        };
        "vocab2" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
          ];
        };
        "vocab3" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
          ];
        };
        "weapons" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.random)
          ];
        };
      };
    };
  }