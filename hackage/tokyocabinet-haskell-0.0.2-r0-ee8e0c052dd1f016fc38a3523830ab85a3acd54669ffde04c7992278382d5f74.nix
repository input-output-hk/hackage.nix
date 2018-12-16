{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "tokyocabinet-haskell";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tom.lpsd@gmail.com";
      author = "Tom Tsuruhara";
      homepage = "";
      url = "";
      synopsis = "Haskell binding of Tokyo Cabinet";
      description = "Bindings to Tokyo Cabinet library.\nTokyo Cabinet is a modern implementation of DBM.\nFor more about Tokyo Cabinet, see <http://tokyocabinet.sourceforge.net/index.html>.\nThis package provides `tokyocabinet.idl compliant' naive interfaces.\nSee, <http://tokyocabinet.sourceforge.net/tokyocabinet.idl>.\nMap interface and TDB have not supported yet.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
        ];
        libs = [
          (pkgs."tokyocabinet")
        ];
      };
    };
  }