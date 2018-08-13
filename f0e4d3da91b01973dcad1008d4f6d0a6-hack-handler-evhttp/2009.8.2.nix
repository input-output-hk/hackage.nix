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
      specVersion = "1.2";
      identifier = {
        name = "hack-handler-evhttp";
        version = "2009.8.2";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Bickford, Brandon <bickfordb@gmail.com>";
      author = "Bickford, Brandon <bickfordb@gmail.com>";
      homepage = "http://github.com/bickfordb/hack-handler-evhttp";
      url = "";
      synopsis = "Hack EvHTTP (libevent) Handler";
      description = "Hack EvHTTP (libevent) Handler";
      buildType = "Simple";
    };
    components = {
      "hack-handler-evhttp" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-class)
          (hsPkgs.containers)
          (hsPkgs.network)
          (hsPkgs.data-default)
          (hsPkgs.hack)
          (hsPkgs.hack-contrib)
        ];
        libs = [ (pkgs."event") ];
      };
    };
  }