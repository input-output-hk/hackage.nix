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
        name = "hspec-discover";
        version = "2.0.0";
      };
      license = "MIT";
      copyright = "(c) 2012-2014 Simon Hengel";
      maintainer = "Simon Hengel <sol@typeful.net>";
      author = "Simon Hengel <sol@typeful.net>";
      homepage = "http://hspec.github.io/";
      url = "";
      synopsis = "Automatically discover and run Hspec tests";
      description = "Automatically discover and run Hspec tests\n\n<http://hspec.github.io/hspec-discover.html>\ntest-data/nested-spec/FooSpec.hs\ntest-data/nested-spec/Foo/Bar/BazSpec.hs\ntest-data/nested-spec/Foo/BarSpec.hs\ntest-data/empty-dir/Foo/Bar/Baz/.placeholder";
      buildType = "Simple";
    };
    components = {
      "library" = {};
      exes = {
        "hspec-discover" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.directory)
          ];
        };
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.hspec-meta)
          ];
        };
      };
    };
  }