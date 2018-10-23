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
        name = "stripe";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Spearhead Development, L.L.C.";
      maintainer = "Michael Schade <michael@spearheaddev.com>";
      author = "Spearhead Development, L.L.C.";
      homepage = "";
      url = "";
      synopsis = "A Haskell implementation of the Stripe API.";
      description = "This is an implementation of the Stripe API as it is\ndocumented at https://stripe.com/docs/api";
      buildType = "Simple";
    };
    components = {
      "stripe" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.json)
          (hsPkgs.network)
          (hsPkgs.time)
          (hsPkgs.http-types)
          (hsPkgs.curl)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
        ];
      };
    };
  }