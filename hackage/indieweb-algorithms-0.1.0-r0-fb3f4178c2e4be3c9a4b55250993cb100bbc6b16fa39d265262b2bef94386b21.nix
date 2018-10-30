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
        name = "indieweb-algorithms";
        version = "0.1.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "2015 Greg V <greg@unrelenting.technology>";
      maintainer = "greg@unrelenting.technology";
      author = "Greg V";
      homepage = "https://github.com/myfreeweb/indieweb-algorithms";
      url = "";
      synopsis = "A collection of implementations of IndieWeb algorithms.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.time)
          (hsPkgs.either)
          (hsPkgs.safe)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.lens)
          (hsPkgs.aeson)
          (hsPkgs.lens-aeson)
          (hsPkgs.data-default)
          (hsPkgs.network-uri)
          (hsPkgs.microformats2-parser)
          (hsPkgs.http-link-header)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.time)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.network-uri)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations-pretty-diff)
            (hsPkgs.aeson)
            (hsPkgs.template-haskell)
            (hsPkgs.indieweb-algorithms)
            (hsPkgs.microformats2-parser)
            (hsPkgs.raw-strings-qq)
            (hsPkgs.aeson-qq)
            (hsPkgs.data-default)
          ];
        };
      };
    };
  }