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
      specVersion = "1.9.2";
      identifier = {
        name = "ratio-int";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Raphael Javaux <raphaeljavaux[at]gmail.com>";
      author = "Raphael Javaux <raphaeljavaux[at]gmail.com>";
      homepage = "https://github.com/RaphaelJ/ratio-int";
      url = "";
      synopsis = "Fast specialisation of Data.Ratio for Int.";
      description = "Fast specialisation of Data.Ratio for Int.\n\nRuns about ten times faster than Data.Int while being half\nas fast as floating-point types.";
      buildType = "Simple";
    };
    components = {
      "ratio-int" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }