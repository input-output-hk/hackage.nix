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
        name = "asn";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2018 Layer 3 Communications, Andrew Martin";
      maintainer = "chessai <chessai1996@gmail.com>";
      author = "Andrew Martin";
      homepage = "https://github.com/chessai/asn.git";
      url = "";
      synopsis = "asn type and encoding/decoding";
      description = "asn type and encoding/decoding api";
      buildType = "Simple";
    };
    components = {
      "asn" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.hashable)
          (hsPkgs.primitive)
          (hsPkgs.scientific)
          (hsPkgs.text)
        ];
      };
    };
  }