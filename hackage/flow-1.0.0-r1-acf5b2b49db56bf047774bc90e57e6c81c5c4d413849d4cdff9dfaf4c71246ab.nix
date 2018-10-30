{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "flow";
        version = "1.0.0";
      };
      license = "MIT";
      copyright = "2015 Taylor Fausak <taylor@fausak.me>";
      maintainer = "Taylor Fausak <taylor@fausak.me>";
      author = "Taylor Fausak <taylor@fausak.me>";
      homepage = "http://taylor.fausak.me/flow/";
      url = "";
      synopsis = "Write more understandable Haskell.";
      description = "Flow is a package that provides functions and operators for writing more\nunderstandable Haskell. It's an alternative to some common idioms like\nfunction application with @(\$)@ and function composition with @(.)@.\n\nFor more information, please visit\n<http://taylor.fausak.me/flow/ its official site>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
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