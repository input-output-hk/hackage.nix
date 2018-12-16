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
      specVersion = "1.8";
      identifier = {
        name = "car-pool";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann";
      homepage = "http://hub.darcs.net/thielema/car-pool/";
      url = "";
      synopsis = "Simple web-server for organizing car-pooling for an event";
      description = "Simple web-server for organizing car-pooling for an event";
      buildType = "Simple";
    };
    components = {
      exes = {
        "car-pool" = {
          depends = [
            (hsPkgs.spreadsheet)
            (hsPkgs.transformers)
            (hsPkgs.explicit-exception)
            (hsPkgs.blaze-html)
            (hsPkgs.digestive-functors-blaze)
            (hsPkgs.digestive-functors-happstack)
            (hsPkgs.digestive-functors)
            (hsPkgs.happstack-server)
            (hsPkgs.text)
            (hsPkgs.non-empty)
            (hsPkgs.containers)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
          ];
        };
      };
    };
  }