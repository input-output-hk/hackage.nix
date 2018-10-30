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
      specVersion = "1.10";
      identifier = {
        name = "jps";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Zachary Kamerling";
      maintainer = "Sandy Maguire <sandy@sandymaguire.me>";
      author = "Zachary Kamerling";
      homepage = "https://github.com/isovector/jps#readme";
      url = "";
      synopsis = "Jump point search for Haskell";
      description = "Please see the README on GitHub at <https://github.com/isovector/jps#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.fingertree)
          (hsPkgs.lens)
          (hsPkgs.vector)
        ];
      };
    };
  }