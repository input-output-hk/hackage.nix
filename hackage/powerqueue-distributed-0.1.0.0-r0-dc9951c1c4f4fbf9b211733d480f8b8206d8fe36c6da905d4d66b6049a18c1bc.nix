{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "powerqueue-distributed";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Alexander Thiemann <mail@athiemann.net>";
      maintainer = "mail@athiemann.net";
      author = "Alexander Thiemann";
      homepage = "https://github.com/agrafix/powerqueue#readme";
      url = "";
      synopsis = "A distributed worker backend for powerqueu";
      description = "A distributed worker backend for powerqueu";
      buildType = "Simple";
    };
    components = {
      "powerqueue-distributed" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.powerqueue)
          (hsPkgs.text)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.cereal-conduit)
          (hsPkgs.mtl)
          (hsPkgs.timespan)
        ];
      };
      tests = {
        "powerqueue-distributed-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.powerqueue)
            (hsPkgs.powerqueue-distributed)
            (hsPkgs.hspec)
            (hsPkgs.stm)
            (hsPkgs.async)
            (hsPkgs.timespan)
          ];
        };
      };
    };
  }