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
        name = "iconv";
        version = "0.4.1.3";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2006-20015 Duncan Coutts";
      maintainer = "Duncan Coutts <duncan@community.haskell.org>";
      author = "Duncan Coutts <duncan@community.haskell.org>";
      homepage = "";
      url = "";
      synopsis = "String encoding conversion";
      description = "Provides an interface to the POSIX iconv library functions\nfor string encoding conversion.";
      buildType = "Simple";
    };
    components = {
      "iconv" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
        libs = pkgs.lib.optional (system.isOsx || system.isFreebsd) (pkgs.iconv);
      };
    };
  }