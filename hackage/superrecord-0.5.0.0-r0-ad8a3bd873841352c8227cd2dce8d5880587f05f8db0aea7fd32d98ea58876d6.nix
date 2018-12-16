{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      ghcjsnativerecord = true;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "superrecord";
        version = "0.5.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017-2018 Alexander Thiemann <mail@athiemann.net>";
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
          (hsPkgs.constraints)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.ghc-prim)
          (hsPkgs.mtl)
        ] ++ pkgs.lib.optional (compiler.isGhcjs && true) (hsPkgs.ghcjs-base);
      };
      tests = {
        "superrecord-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.superrecord)
            (hsPkgs.hspec)
            (hsPkgs.aeson)
            (hsPkgs.mtl)
            (hsPkgs.text)
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
            (hsPkgs.text)
          ];
        };
      };
    };
  }