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
      specVersion = "1.6";
      identifier = {
        name = "stringprep";
        version = "0.1.2";
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