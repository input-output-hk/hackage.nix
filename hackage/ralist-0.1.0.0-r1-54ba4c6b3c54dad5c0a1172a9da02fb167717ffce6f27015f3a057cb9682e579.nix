{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "ralist"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Lennart Augustsson";
      author = "Lennart Augustsson";
      homepage = "";
      url = "";
      synopsis = "Random access list with a list compatible interface.";
      description = "Random access list with a list compatible interface.\nRandom access list have same complexity as lists with some exceptions,\nthe notable one being that (!!) is O(log n) instead of O(n).\nRALists have to be finite.";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }