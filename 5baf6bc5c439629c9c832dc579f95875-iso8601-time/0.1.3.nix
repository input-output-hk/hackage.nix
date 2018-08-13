{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      new-time = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "iso8601-time";
        version = "0.1.3";
      };
      license = "MIT";
      copyright = "2013 Niklas Hambüchen <mail@nh2.me>";
      maintainer = "Niklas Hambüchen <mail@nh2.me>";
      author = "Niklas Hambüchen <mail@nh2.me>";
      homepage = "https://github.com/nh2/iso8601-time";
      url = "";
      synopsis = "Convert to/from the ISO 8601 time format";
      description = "Conversion functions between Haskell time types and the ISO 8601 format,\nwhich is often used for printing times, e.g. JavaScript's @new Date().toISOString()@.";
      buildType = "Simple";
    };
    components = {
      "iso8601-time" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.time)
        ] ++ (if _flags.new-time
          then [ (hsPkgs.time) ]
          else [
            (hsPkgs.time)
            (hsPkgs.old-locale)
          ]);
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.iso8601-time)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.time)
          ];
        };
      };
    };
  }