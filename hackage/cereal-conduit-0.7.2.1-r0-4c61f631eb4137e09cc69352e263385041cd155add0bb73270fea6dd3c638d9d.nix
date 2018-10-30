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
        name = "cereal-conduit";
        version = "0.7.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Myles C. Maxfield <myles.maxfield@gmail.com>";
      author = "Myles C. Maxfield <myles.maxfield@gmail.com>";
      homepage = "https://github.com/litherum/cereal-conduit";
      url = "";
      synopsis = "Turn Data.Serialize Gets and Puts into Sources, Sinks, and Conduits";
      description = "Turn Data.Serialize Gets and Puts into Sources, Sinks, and Conduits.\n\n[0.7]\nUpgrade to conduit 1.0.0";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.conduit)
          (hsPkgs.resourcet)
          (hsPkgs.cereal)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "test-cereal-conduit" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.conduit)
            (hsPkgs.cereal)
            (hsPkgs.bytestring)
            (hsPkgs.HUnit)
            (hsPkgs.resourcet)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }