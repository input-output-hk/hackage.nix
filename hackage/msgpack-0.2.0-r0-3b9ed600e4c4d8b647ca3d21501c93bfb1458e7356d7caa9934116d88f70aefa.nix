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
        version = "0.2.0";
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
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
        ];
        libs = [ (pkgs."msgpackc") ];
      };
    };
  }