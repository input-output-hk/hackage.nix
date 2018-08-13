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
        name = "keyvaluehash";
        version = "0.3.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "eyal.lotem@gmail.com";
      author = "Eyal Lotem";
      homepage = "";
      url = "";
      synopsis = "Pure Haskell key/value store implementation";
      description = "";
      buildType = "Simple";
    };
    components = {
      "keyvaluehash" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.bytestring)
          (hsPkgs.hashable)
          (hsPkgs.binary)
          (hsPkgs.derive)
          (hsPkgs.mmap)
          (hsPkgs.array)
          (hsPkgs.storable-record)
        ];
      };
    };
  }