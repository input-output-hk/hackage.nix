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
        name = "HongoDB";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tanaka.hideyuki@gmail.com";
      author = "Hideyuki Tanaka";
      homepage = "";
      url = "";
      synopsis = "A Simple Key Value Store";
      description = "";
      buildType = "Simple";
    };
    components = {
      "HongoDB" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.directory)
          (hsPkgs.unordered-containers)
          (hsPkgs.enumerator)
          (hsPkgs.monad-control)
          (hsPkgs.unix)
          (hsPkgs.unix-bytestring)
          (hsPkgs.blaze-builder)
          (hsPkgs.attoparsec)
          (hsPkgs.attoparsec-binary)
          (hsPkgs.hashable)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.random)
          ];
        };
      };
    };
  }