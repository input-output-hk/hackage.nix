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
      specVersion = "1.10";
      identifier = {
        name = "antiope-core";
        version = "1.0.0";
      };
      license = "MIT";
      copyright = "Arbor Networks";
      maintainer = "mayhem@arbor.net";
      author = "Tyler Durden";
      homepage = "https://github.com/arbor/antiope#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on Github at <https://github.com/arbor/antiope#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.amazonka)
          (hsPkgs.amazonka-core)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.http-client)
          (hsPkgs.lens)
          (hsPkgs.resourcet)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "antiope-core-test" = {
          depends  = [
            (hsPkgs.amazonka)
            (hsPkgs.amazonka-core)
            (hsPkgs.antiope-core)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.http-client)
            (hsPkgs.lens)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }