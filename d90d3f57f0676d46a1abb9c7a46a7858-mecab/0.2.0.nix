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
        name = "mecab";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hideyuki Tanaka <tanaka.hideyuki@gmail.com>";
      author = "Hideyuki Tanaka";
      homepage = "http://github.com/tanakh/hsmecab";
      url = "";
      synopsis = "A Haskell binding to MeCab";
      description = "A Haskell binding to MeCab <http://mecab.sourceforge.net/>";
      buildType = "Simple";
    };
    components = {
      "mecab" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
        ];
        libs = [ (pkgs.mecab) ];
      };
    };
  }