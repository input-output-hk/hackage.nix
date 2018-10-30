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
        name = "engine-io-wai";
        version = "1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "brandon@codedmart.com";
      author = "Brandon Martin";
      homepage = "http://github.com/ocharles/engine.io";
      url = "";
      synopsis = "";
      description = "This package provides an @engine-io@ @ServerAPI@ that is compatible with\n<https://hackage.haskell.org/package/wai/ Wai>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.engine-io)
          (hsPkgs.http-types)
          (hsPkgs.unordered-containers)
          (hsPkgs.wai)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.websockets)
          (hsPkgs.wai-websockets)
          (hsPkgs.mtl)
          (hsPkgs.either)
          (hsPkgs.transformers)
          (hsPkgs.transformers-compat)
          (hsPkgs.attoparsec)
        ];
      };
    };
  }