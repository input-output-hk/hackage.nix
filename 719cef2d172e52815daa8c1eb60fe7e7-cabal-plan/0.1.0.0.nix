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
      specVersion = "1.10";
      identifier = {
        name = "cabal-plan";
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "2016 Herbert Valerio Riedel";
      maintainer = "hvr@gnu.org";
      author = "Herbert Valerio Riedel";
      homepage = "https://github.com/hvr/cabal-plan";
      url = "";
      synopsis = "Library and utiltity for processing cabal's plan.json file";
      description = "This package provides a library for decoding @plan.json@ files as\nwell as simple tool @cabal-plan@ for extracting and pretty printing\nthe information contained in the @plan.json@ file.";
      buildType = "Simple";
    };
    components = {
      "cabal-plan" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.base16-bytestring)
        ];
      };
      exes = {
        "cabal-plan" = {
          depends  = [
            (hsPkgs.cabal-plan)
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.ansi-terminal)
          ];
        };
      };
    };
  }