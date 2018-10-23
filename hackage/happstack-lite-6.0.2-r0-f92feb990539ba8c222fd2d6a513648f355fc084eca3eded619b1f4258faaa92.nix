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
        name = "happstack-lite";
        version = "6.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jeremy@n-heptane.com";
      author = "Jeremy Shaw";
      homepage = "http://www.happstack.com/";
      url = "";
      synopsis = "Happstack minus the useless stuff";
      description = "This packages provides a subset of Happstack that is easier to learn but still very useful. It as 100% compatible with the full version of Happstack.";
      buildType = "Simple";
    };
    components = {
      "happstack-lite" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.happstack-server)
          (hsPkgs.text)
        ];
      };
    };
  }