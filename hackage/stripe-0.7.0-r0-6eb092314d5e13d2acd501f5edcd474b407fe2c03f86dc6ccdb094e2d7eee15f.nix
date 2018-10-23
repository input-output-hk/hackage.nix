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
        version = "0.7.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Spearhead Development, L.L.C.";
      maintainer = "Michael Schade <m@mschade.me>,\nLuke Hoersten <luke@hoersten.org>";
      author = "Spearhead Development, L.L.C.";
      homepage = "https://github.com/michaelschade/hs-stripe";
      url = "";
      synopsis = "A Haskell implementation of the Stripe API.";
      description = "This is an implementation of the Stripe API as it is\ndocumented at https:\\/\\/stripe.com\\/docs\\/api";
      buildType = "Simple";
    };
    components = {
      "stripe" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.unordered-containers)
          (hsPkgs.time)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.utf8-string)
        ];
      };
    };
  }