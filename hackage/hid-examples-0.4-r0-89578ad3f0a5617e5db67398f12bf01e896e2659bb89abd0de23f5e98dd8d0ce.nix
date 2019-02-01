{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "hid-examples"; version = "0.4"; };
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
      sublibs = {
        "ipgen-lib" = {
          depends = [ (hsPkgs.base) (hsPkgs.hedgehog) (hsPkgs.iplookup-lib) ];
          };
        "iplookup-lib" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.safe)
            (hsPkgs.safe-exceptions)
            (hsPkgs.split)
            ];
          };
        };
      exes = {
        "dicegame" = {
          depends = [ (hsPkgs.base) (hsPkgs.mtl) (hsPkgs.random) ];
          };
        "du" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.unix-compat)
            ];
          };
        "filecount" = { depends = [ (hsPkgs.base) (hsPkgs.extra) ]; };
        "gcd" = { depends = [ (hsPkgs.base) (hsPkgs.mtl) ]; };
        "genSQL" = { depends = [ (hsPkgs.base) (hsPkgs.mtl) (hsPkgs.text) ]; };
        "ioref" = { depends = [ (hsPkgs.base) ]; };
        "ipgen" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hedgehog)
            (hsPkgs.ipgen-lib)
            (hsPkgs.optparse-applicative)
            (hsPkgs.safe-exceptions)
            ];
          };
        "iplookup" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.iplookup-lib)
            (hsPkgs.optparse-applicative)
            (hsPkgs.safe-exceptions)
            ];
          };
        "locator" = { depends = [ (hsPkgs.base) ]; };
        "maybe" = { depends = [ (hsPkgs.base) (hsPkgs.safe) ]; };
        "reader" = { depends = [ (hsPkgs.base) (hsPkgs.mtl) ]; };
        "rpnexpr" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.safe)
            (hsPkgs.transformers)
            ];
          };
        "showexpr" = { depends = [ (hsPkgs.base) (hsPkgs.hint) ]; };
        "shunting-yard" = { depends = [ (hsPkgs.base) (hsPkgs.mtl) ]; };
        "stockquotes" = {
          depends = [
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
        "stref" = { depends = [ (hsPkgs.base) ]; };
        "suntimes" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.data-default)
            (hsPkgs.http-client)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.req)
            (hsPkgs.safe-exceptions)
            (hsPkgs.system-locale)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            ];
          };
        "vocab1" = { depends = [ (hsPkgs.base) (hsPkgs.text) ]; };
        "vocab2" = { depends = [ (hsPkgs.base) (hsPkgs.text) ]; };
        "vocab3" = { depends = [ (hsPkgs.base) (hsPkgs.text) ]; };
        "weapons" = {
          depends = [ (hsPkgs.base) (hsPkgs.mtl) (hsPkgs.random) ];
          };
        };
      tests = {
        "iplookup-doctest" = { depends = [ (hsPkgs.base) (hsPkgs.doctest) ]; };
        "iplookup-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.hedgehog)
            (hsPkgs.ipgen-lib)
            (hsPkgs.iplookup-lib)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.tasty-hedgehog)
            (hsPkgs.tasty-hspec)
            ];
          };
        };
      };
    }