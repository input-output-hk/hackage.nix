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
        name = "macbeth-lib";
        version = "0.0.12";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "tilmann@macbeth-ficsclient.com";
      author = "Tilmann Gass";
      homepage = "http://www.macbeth-ficsclient.com";
      url = "";
      synopsis = "Macbeth - A beautiful and minimalistic FICS client";
      description = "A FICS client written with OSX in mind.";
      buildType = "Simple";
    };
    components = {
      "macbeth-lib" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.wxcore)
          (hsPkgs.wx)
          (hsPkgs.network)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.resourcet)
          (hsPkgs.bytestring)
          (hsPkgs.split)
          (hsPkgs.attoparsec)
          (hsPkgs.filepath)
          (hsPkgs.containers)
          (hsPkgs.split)
          (hsPkgs.mtl)
          (hsPkgs.stm)
          (hsPkgs.sodium)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.time)
          (hsPkgs.MissingH)
          (hsPkgs.old-locale)
          (hsPkgs.safe)
          (hsPkgs.FindBin)
          (hsPkgs.yaml)
          (hsPkgs.either-unwrap)
        ];
      };
      exes = {
        "Macbeth" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.wx)
            (hsPkgs.wxcore)
            (hsPkgs.macbeth-lib)
            (hsPkgs.stm)
          ];
        };
      };
      tests = {
        "macbeth-lib-test" = {
          depends  = [
            (hsPkgs.macbeth-lib)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.bytestring)
            (hsPkgs.attoparsec)
          ];
        };
      };
    };
  }