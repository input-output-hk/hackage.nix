{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "darkplaces-demo"; version = "0.1"; };
      license = "GPL-2.0-only";
      copyright = "(c) Slava Bacherikov 2015";
      maintainer = "slava@bacher09.org";
      author = "Slava Bacherikov";
      homepage = "https://github.com/bacher09/darkplaces-demo";
      url = "";
      synopsis = "Utility and parser for DarkPlaces demo files";
      description = "Curently this package supports only reading some sorts of\ninfo from darkplaces demo file.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.transformers)
          (hsPkgs.data-binary-ieee754)
          (hsPkgs.containers)
          (hsPkgs.regex-tdfa)
          ];
        };
      exes = {
        "demoinfo" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.optparse-applicative)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.darkplaces-demo)
            (hsPkgs.darkplaces-text)
            ];
          };
        };
      benchmarks = {
        "bench-darkplaces-demo" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.transformers)
            (hsPkgs.binary)
            (hsPkgs.darkplaces-demo)
            (hsPkgs.criterion)
            ];
          };
        };
      };
    }