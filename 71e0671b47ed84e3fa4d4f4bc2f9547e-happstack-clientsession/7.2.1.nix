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
        name = "happstack-clientsession";
        version = "7.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Happstack team <happs@googlegroups.com>";
      author = "Dag Odenhall";
      homepage = "http://happstack.com";
      url = "";
      synopsis = "client-side session data";
      description = "uses the clientsession library to store session data in an HTTP cookie";
      buildType = "Simple";
    };
    components = {
      "happstack-clientsession" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.clientsession)
          (hsPkgs.happstack-server)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.safecopy)
          (hsPkgs.transformers-base)
        ];
      };
    };
  }