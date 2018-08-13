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
      specVersion = "1.6.0.1";
      identifier = {
        name = "tagged-th";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Nicolas Frisby <nicolas.frisby@gmail.com>";
      author = "Nicolas Frisby <nicolas.frisby@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "QuasiQuoter and Template Haskell splices for creating proxies at higher-kinds";
      description = "QuasiQuoter and Template Haskell splices for creating proxies at\nhigher-kinds (via @type-spine@'s @k -> *@ kind wrappers)";
      buildType = "Simple";
    };
    components = {
      "tagged-th" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.tagged)
          (hsPkgs.type-spine)
        ];
      };
    };
  }