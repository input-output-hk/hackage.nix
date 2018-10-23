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
        name = "msgpack";
        version = "0.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hideyuki Tanaka <tanaka.hideyuki@gmail.com>";
      author = "Hideyuki Tanaka";
      homepage = "http://github.com/tanakh/hsmsgpack";
      url = "";
      synopsis = "A Haskell binding to MessagePack";
      description = "A Haskell binding to MessagePack <http://msgpack.sourceforge.jp/>";
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
        ];
      };
    };
  }