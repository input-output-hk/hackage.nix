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
      specVersion = "1.18";
      identifier = {
        name = "unjson";
        version = "0.15.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Scrive AB";
      maintainer = "Gracjan Polak <gracjanpolak@gmail.com>,\nJonathan Jouty <jonathan@scrive.com>,\nMikhail Glushenkov <mikhail@scrive.com>";
      author = "Scrive AB";
      homepage = "https://github.com/scrive/unjson";
      url = "";
      synopsis = "Bidirectional JSON parsing and generation.";
      description = "Bidirectional JSON parsing and generation\nwith automatic documentation support.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.free)
          (hsPkgs.scientific)
          (hsPkgs.attoparsec)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.pretty)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.hashable)
          (hsPkgs.primitive)
          (hsPkgs.time)
          (hsPkgs.invariant)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.unjson)
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.aeson)
            (hsPkgs.free)
            (hsPkgs.scientific)
            (hsPkgs.attoparsec)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.HUnit)
            (hsPkgs.bytestring)
            (hsPkgs.pretty)
            (hsPkgs.primitive)
            (hsPkgs.containers)
            (hsPkgs.time)
            (hsPkgs.hashable)
            (hsPkgs.invariant)
          ];
        };
      };
    };
  }