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
        name = "msgpack";
        version = "0.5.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2009-2010, Hideyuki Tanaka";
      maintainer = "Hideyuki Tanaka <tanaka.hideyuki@gmail.com>";
      author = "Hideyuki Tanaka";
      homepage = "http://github.com/msgpack/msgpack";
      url = "";
      synopsis = "A Haskell binding to MessagePack";
      description = "A Haskell binding to MessagePack <http://msgpack.org/>";
      buildType = "Simple";
    };
    components = {
      "msgpack" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.MonadCatchIO-transformers)
          (hsPkgs.bytestring)
          (hsPkgs.vector)
          (hsPkgs.iteratee)
          (hsPkgs.attoparsec)
          (hsPkgs.binary)
          (hsPkgs.data-binary-ieee754)
          (hsPkgs.deepseq)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }