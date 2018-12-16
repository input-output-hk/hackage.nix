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
        name = "superrecord";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Alexander Thiemann <mail@athiemann.net>";
      maintainer = "mail@athiemann.net";
      author = "Alexander Thiemann";
      homepage = "https://github.com/agrafix/superrecord#readme";
      url = "";
      synopsis = "Supercharged anonymous records";
      description = "Anonymous records with various useful utilities";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.primitive)
          (hsPkgs.constraints)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.deepseq)
          (hsPkgs.ghc-prim)
        ];
      };
      tests = {
        "superrecord-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.superrecord)
            (hsPkgs.hspec)
            (hsPkgs.aeson)
          ];
        };
      };
      benchmarks = {
        "superrecord-bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.superrecord)
            (hsPkgs.criterion)
            (hsPkgs.labels)
            (hsPkgs.bookkeeper)
            (hsPkgs.deepseq)
            (hsPkgs.aeson)
          ];
        };
      };
    };
  }