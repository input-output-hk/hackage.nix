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
        name = "digestive-functors-lucid";
        version = "0.0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Athan Clark <athan.clark@gmail.com>";
      author = "Athan Clark <athan.clark@gmail.com>";
      homepage = "http://github.com/jaspervdj/digestive-functors";
      url = "";
      synopsis = "Lucid frontend for the digestive-functors library";
      description = "Ludic frontend for the digestive-functors library";
      buildType = "Simple";
    };
    components = {
      "digestive-functors-lucid" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.lucid)
          (hsPkgs.digestive-functors)
          (hsPkgs.text)
        ];
      };
    };
  }