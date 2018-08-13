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
        name = "linden";
        version = "0";
      };
      license = "BSD-3-Clause";
      copyright = "davean 2016-2017";
      maintainer = "oss@xkcd.com";
      author = "davean";
      homepage = "https://oss.xkcd.com/";
      url = "";
      synopsis = "Zen gardening, based on l-systems";
      description = "A system for defining and running interactive l-systems over the web.";
      buildType = "Simple";
    };
    components = {
      "linden" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.deepseq)
          (hsPkgs.containers)
          (hsPkgs.rosezipper)
          (hsPkgs.random-fu)
          (hsPkgs.aeson)
          (hsPkgs.mtl)
          (hsPkgs.monad-supply)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.wai)
          (hsPkgs.http-types)
          (hsPkgs.wai-extra)
          (hsPkgs.wai-app-static)
          (hsPkgs.wai-cors)
          (hsPkgs.delay)
          (hsPkgs.time)
          (hsPkgs.filepath)
          (hsPkgs.SHA)
          (hsPkgs.uuid)
          (hsPkgs.unordered-containers)
          (hsPkgs.lens)
          (hsPkgs.exceptions)
          (hsPkgs.hashable)
          (hsPkgs.hedis)
          (hsPkgs.zlib)
        ];
      };
      exes = {
        "linden-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.linden)
            (hsPkgs.containers)
            (hsPkgs.rosezipper)
            (hsPkgs.mtl)
            (hsPkgs.random-fu)
            (hsPkgs.warp)
            (hsPkgs.uuid)
            (hsPkgs.hashable)
            (hsPkgs.text)
          ];
        };
      };
    };
  }