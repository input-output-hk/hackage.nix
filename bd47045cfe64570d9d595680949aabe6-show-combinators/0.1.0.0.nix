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
        name = "show-combinators";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "2018 Li-yao Xia";
      maintainer = "lysxia@gmail.com";
      author = "Li-yao Xia";
      homepage = "https://github.com/Lysxia/show-combinators#readme";
      url = "";
      synopsis = "Combinators to write Show instances";
      description = "A minimal pretty-printing library for Show instances in Haskell.";
      buildType = "Simple";
    };
    components = {
      "show-combinators" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.show-combinators)
            (hsPkgs.base)
          ];
        };
      };
    };
  }