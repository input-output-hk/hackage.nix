{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "unfoldable"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sjoerd@w3future.com";
      author = "Sjoerd Visscher";
      homepage = "https://github.com/sjoerdvisscher/unfoldable";
      url = "";
      synopsis = "Class of data structures that can be unfolded.";
      description = "Just as there's a Foldable class, there should also be an Unfoldable class.\nThis package provides one. Example unfolds are:\n\n* Random values\n* Enumeration of all values (depth-first or breadth-first)\n* Convert from a list\n\nThe package provides examples in the examples directory.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.transformers) (hsPkgs.random) ];
        };
      };
    }