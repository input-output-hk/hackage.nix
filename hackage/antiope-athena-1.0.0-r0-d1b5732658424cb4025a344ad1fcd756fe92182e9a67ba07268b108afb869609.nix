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
        name = "antiope-athena";
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
          (hsPkgs.amazonka-athena)
          (hsPkgs.amazonka-core)
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.resourcet)
          (hsPkgs.text)
        ];
      };
      tests = {
        "antiope-athena-test" = {
          depends  = [
            (hsPkgs.amazonka)
            (hsPkgs.amazonka-athena)
            (hsPkgs.amazonka-core)
            (hsPkgs.antiope-athena)
            (hsPkgs.base)
            (hsPkgs.lens)
            (hsPkgs.resourcet)
            (hsPkgs.text)
          ];
        };
      };
    };
  }