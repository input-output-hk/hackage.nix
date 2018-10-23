{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "flow";
        version = "1.0.10";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Taylor Fausak";
      author = "";
      homepage = "https://github.com/tfausak/flow#readme";
      url = "";
      synopsis = "Write more understandable Haskell.";
      description = "Flow provides operators for writing more understandable Haskell.";
      buildType = "Simple";
    };
    components = {
      "flow" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.flow)
            (hsPkgs.template-haskell)
          ];
        };
      };
    };
  }