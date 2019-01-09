{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "Villefort"; version = "0.1.2.16"; };
      license = "BSD-3-Clause";
      copyright = "2017 Alice Reuter";
      maintainer = "alicereuterdev@gmail.com";
      author = "Alice Reuter";
      homepage = "https://github.com/alicereuter/Villefort#readme";
      url = "";
      synopsis = "Villefort is a task manager and time tracker";
      description = "Villefort is a browser based time tracker built around a sqlite3 database.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.HDBC)
          (hsPkgs.HDBC-sqlite3)
          (hsPkgs.split)
          (hsPkgs.time)
          (hsPkgs.mtl)
          (hsPkgs.random)
          (hsPkgs.process)
          (hsPkgs.strict)
          (hsPkgs.scotty)
          (hsPkgs.text)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.unix)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
          (hsPkgs.MissingH)
          (hsPkgs.convertible)
          (hsPkgs.uri-encode)
          ];
        };
      exes = {
        "Villefort" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Villefort)
            (hsPkgs.scotty)
            (hsPkgs.HDBC-sqlite3)
            (hsPkgs.HDBC)
            (hsPkgs.split)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.random)
            (hsPkgs.mtl)
            ];
          };
        };
      tests = {
        "Villefort-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Villefort)
            (hsPkgs.concurrent-extra)
            (hsPkgs.hspec)
            (hsPkgs.mtl)
            (hsPkgs.QuickCheck)
            (hsPkgs.HDBC)
            (hsPkgs.HDBC-sqlite3)
            (hsPkgs.webdriver)
            (hsPkgs.unbounded-delays)
            ];
          };
        };
      };
    }