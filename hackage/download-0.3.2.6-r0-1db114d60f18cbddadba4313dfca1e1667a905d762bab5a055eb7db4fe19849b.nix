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
      specVersion = "1.8";
      identifier = {
        name = "download";
        version = "0.3.2.6";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2011, Don Stewart <dons00@gmail.com>";
      maintainer = "Sibi Prabakaran <sibi@psibi.in>";
      author = "Don Stewart";
      homepage = "https://github.com/psibi/download";
      url = "";
      synopsis = "High-level file download based on URLs";
      description = "High-level file download based on URLs";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.tagsoup)
          (hsPkgs.feed)
          (hsPkgs.xml)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.download)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }