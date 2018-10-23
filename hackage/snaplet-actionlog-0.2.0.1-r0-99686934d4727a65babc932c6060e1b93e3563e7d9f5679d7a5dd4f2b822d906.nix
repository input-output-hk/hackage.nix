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
        name = "snaplet-actionlog";
        version = "0.2.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ozataman@gmail.com, mightybyte@gmail.com";
      author = "Soostone Inc. Ozgun Ataman, Doug Beardsley";
      homepage = "https://github.com/soostone/snaplet-actionlog";
      url = "";
      synopsis = "Generic action log snaplet for the Snap Framework";
      description = "This snaplet contains support for logging website actions.\nCommon actions are creating, updating, and deleting records.";
      buildType = "Simple";
    };
    components = {
      "snaplet-actionlog" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.digestive-functors)
          (hsPkgs.digestive-functors-heist)
          (hsPkgs.digestive-functors-snap)
          (hsPkgs.errors)
          (hsPkgs.heist)
          (hsPkgs.persistent)
          (hsPkgs.persistent-postgresql)
          (hsPkgs.persistent-template)
          (hsPkgs.readable)
          (hsPkgs.restful-snap)
          (hsPkgs.snap)
          (hsPkgs.snap-extras)
          (hsPkgs.snaplet-persistent)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.xmlhtml)
        ];
      };
    };
  }