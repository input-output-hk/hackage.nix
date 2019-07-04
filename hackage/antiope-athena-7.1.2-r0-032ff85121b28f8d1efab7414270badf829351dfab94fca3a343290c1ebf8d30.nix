{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "antiope-athena"; version = "7.1.2"; };
      license = "MIT";
      copyright = "Arbor Networks";
      maintainer = "mayhem@arbor.net";
      author = "Arbor Networks";
      homepage = "https://github.com/arbor/antiope#readme";
      url = "";
      synopsis = "Please see the README on Github at <https://github.com/arbor/antiope#readme>";
      description = "Please see the README on Github at <https://github.com/arbor/antiope#readme>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.amazonka)
          (hsPkgs.amazonka-athena)
          (hsPkgs.amazonka-core)
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.resourcet)
          (hsPkgs.text)
          (hsPkgs.unliftio-core)
          ];
        };
      tests = {
        "antiope-athena-test" = {
          depends = [
            (hsPkgs.amazonka)
            (hsPkgs.amazonka-athena)
            (hsPkgs.amazonka-core)
            (hsPkgs.antiope-athena)
            (hsPkgs.base)
            (hsPkgs.lens)
            (hsPkgs.resourcet)
            (hsPkgs.text)
            (hsPkgs.unliftio-core)
            ];
          };
        };
      };
    }