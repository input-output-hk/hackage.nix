{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "reinterpret-cast";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "2014 Niklas Hambüchen <mail@nh2.me>";
      maintainer = "Niklas Hambüchen <mail@nh2.me>";
      author = "Niklas Hambüchen <mail@nh2.me>";
      homepage = "https://github.com/nh2/reinterpret-cast";
      url = "";
      synopsis = "Memory reinterpretation casts for Float/Double and Word32/Word64";
      description = "Memory reinterpretation casts for Float\\/Double and Word32\\/Word64.\n\nThe implementations in the @.Internal@ package are different ways to tackle\nthe problem; the @array@ method (current default) is about 5 times faster\nthan the @FFI@ method.";
      buildType = "Simple";
    };
    components = {
      "reinterpret-cast" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.reinterpret-cast)
            (hsPkgs.data-binary-ieee754)
            (hsPkgs.loop)
            (hsPkgs.hspec)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.reinterpret-cast)
            (hsPkgs.criterion)
            (hsPkgs.data-binary-ieee754)
          ];
        };
      };
    };
  }