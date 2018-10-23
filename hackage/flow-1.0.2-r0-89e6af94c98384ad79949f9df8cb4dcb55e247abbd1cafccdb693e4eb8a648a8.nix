{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "flow";
        version = "1.0.2";
      };
      license = "MIT";
      copyright = "2015 Taylor Fausak <taylor@fausak.me>";
      maintainer = "Taylor Fausak <taylor@fausak.me>";
      author = "Taylor Fausak <taylor@fausak.me>";
      homepage = "http://taylor.fausak.me/flow/";
      url = "";
      synopsis = "Write more understandable Haskell.";
      description = "Flow provides operators for writing more understandable Haskell. It is an\nalternative to some common idioms like (@\$@) for function application and\n(@.@) for function composition.";
      buildType = "Simple";
    };
    components = {
      "flow" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.flow)
            (hsPkgs.doctest)
            (hsPkgs.QuickCheck)
            (hsPkgs.template-haskell)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.flow)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }