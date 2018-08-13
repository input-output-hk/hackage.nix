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
        name = "bindings-apr-util";
        version = "0.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "PHO <pho at cielonegro dot org>";
      author = "PHO <pho at cielonegro dot org>";
      homepage = "http://cielonegro.org/Bindings-APR.html";
      url = "";
      synopsis = "Low level bindings to Apache Portable Runtime Utility (APR Utility)";
      description = "Bindings to APR Utility: <http://apr.apache.org/>";
      buildType = "Simple";
    };
    components = {
      "bindings-apr-util" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bindings-DSL)
          (hsPkgs.bindings-apr)
        ];
        pkgconfig = [
          (pkgconfPkgs.apr-util-1)
        ];
      };
    };
  }