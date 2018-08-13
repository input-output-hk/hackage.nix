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
      specVersion = "1.10";
      identifier = {
        name = "minlen";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/snoyberg/mono-traversable#readme";
      url = "";
      synopsis = "Express the minimum length of a container in its type";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "minlen" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mono-traversable)
          (hsPkgs.semigroups)
          (hsPkgs.transformers)
        ];
      };
    };
  }