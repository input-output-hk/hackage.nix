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
        name = "waldo";
        version = "0";
      };
      license = "BSD-3-Clause";
      copyright = "davean 2012-2017";
      maintainer = "oss@xkcd.com";
      author = "davean";
      homepage = "";
      url = "";
      synopsis = "A generator of comics based on some ascertainable data about the requester.";
      description = "This package was writen to power <https://xkcd.com/ xkcd>'s 2012 April Fools comic <https://xkcd.com/1037 Umwelt>. It uses several datasets and a script to generate a customized story specific to the user viewing it.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.mtl)
          (hsPkgs.unordered-containers)
          (hsPkgs.network)
          (hsPkgs.network-uri)
          (hsPkgs.lrucache)
          (hsPkgs.attoparsec)
          (hsPkgs.hs-GeoIP)
          (hsPkgs.filepath)
          (hsPkgs.resourcet)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.imagesize-conduit)
          (hsPkgs.zlib-conduit)
          (hsPkgs.wai)
          (hsPkgs.http-types)
          (hsPkgs.case-insensitive)
          (hsPkgs.warp)
          (hsPkgs.blaze-builder)
          (hsPkgs.safe)
          (hsPkgs.regex-tdfa)
          (hsPkgs.Geodetic)
          (hsPkgs.SHA)
          (hsPkgs.Glob)
          (hsPkgs.browscap)
        ];
      };
      exes = {
        "waldo-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.waldo)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
            (hsPkgs.wai-app-static)
            (hsPkgs.http-types)
            (hsPkgs.warp)
            (hsPkgs.safe)
          ];
        };
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.waldo)
            (hsPkgs.deepseq)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.aeson)
            (hsPkgs.unordered-containers)
            (hsPkgs.resourcet)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.zlib-conduit)
          ];
        };
      };
    };
  }