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
        name = "stringprep";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "George Pollard <porges@porg.es>";
      author = "George Pollard <porges@porg.es>";
      homepage = "";
      url = "";
      synopsis = "Implements the \"StringPrep\" algorithm";
      description = "Implements the \"StringPrep\" algorithm";
      buildType = "Simple";
    };
    components = {
      "stringprep" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.ranges)
          (hsPkgs.stream-fusion)
          (hsPkgs.text-icu)
          (hsPkgs.text)
        ];
      };
    };
  }