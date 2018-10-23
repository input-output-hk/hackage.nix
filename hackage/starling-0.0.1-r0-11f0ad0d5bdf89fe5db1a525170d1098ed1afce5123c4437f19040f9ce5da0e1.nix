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
        name = "starling";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Antoine Latter <aslatter@gmail.com>";
      author = "Antoine Latter <aslatter@gmail.com>";
      homepage = "http://community.haskell.org/~aslatter/code/starling";
      url = "";
      synopsis = "A memcached client";
      description = "A haskell memcached client. See http:\\/\\/memcached.org\nfor more information.\n\nThis implements the new binary protocol,\nso it only works with memcached version\n1.3 and newer.";
      buildType = "Simple";
    };
    components = {
      "starling" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
        ];
      };
    };
  }