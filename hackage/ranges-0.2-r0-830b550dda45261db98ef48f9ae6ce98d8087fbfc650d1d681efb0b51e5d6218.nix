{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "ranges";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "George Pollard <porges@porg.es>";
      author = "George Pollard <porges@porg.es>";
      homepage = "";
      url = "";
      synopsis = "Ranges and various functions on them.";
      description = "Ranges and some functions allowing things like fast membership\nlookup on ranges with holes in them and so on.";
      buildType = "Simple";
    };
    components = {
      "ranges" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
    };
  }