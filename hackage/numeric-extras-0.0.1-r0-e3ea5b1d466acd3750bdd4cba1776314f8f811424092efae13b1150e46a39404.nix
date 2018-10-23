{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "numeric-extras";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ekmett@gmail.com";
      author = "Edward Kmett";
      homepage = "http://patch-tag.com/r/ekmett/numeric-extras";
      url = "";
      synopsis = "Useful tools from the C standard library";
      description = "";
      buildType = "Simple";
    };
    components = {
      "numeric-extras" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }