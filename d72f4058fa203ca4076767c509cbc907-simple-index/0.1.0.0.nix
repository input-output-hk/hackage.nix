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
      specVersion = "1.8";
      identifier = {
        name = "simple-index";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mr.hugo.gomes@gmail.com";
      author = "Hugo Gomes";
      homepage = "";
      url = "";
      synopsis = "Allows simple indexation on any data type";
      description = "";
      buildType = "Simple";
    };
    components = {
      "simple-index" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.safecopy)
          (hsPkgs.hashable)
        ];
      };
    };
  }