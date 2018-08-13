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
        name = "hblock";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mr.hugo.gomes@gmail.com";
      author = "HugoDaniel";
      homepage = "";
      url = "";
      synopsis = "A mutable vector that provides indexation on the datatype fields it stores";
      description = "";
      buildType = "Simple";
    };
    components = {
      "hblock" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.containers)
          (hsPkgs.safecopy)
          (hsPkgs.unordered-containers)
          (hsPkgs.hashable)
          (hsPkgs.uuid)
          (hsPkgs.blaze-markup)
          (hsPkgs.path-pieces)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.deepseq)
          (hsPkgs.cereal)
          (hsPkgs.bytestring)
        ];
      };
    };
  }