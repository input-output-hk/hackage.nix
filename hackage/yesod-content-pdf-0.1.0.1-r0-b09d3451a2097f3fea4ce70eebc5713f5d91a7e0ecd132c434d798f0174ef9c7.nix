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
        name = "yesod-content-pdf";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2015 Alex Kyllo";
      maintainer = "alex.kyllo@gmail.com";
      author = "Alex Kyllo";
      homepage = "https://github.com/alexkyllo/yesod-content-pdf#readme";
      url = "";
      synopsis = "PDF Content Type for Yesod";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.yesod-core)
          (hsPkgs.process)
          (hsPkgs.bytestring)
          (hsPkgs.blaze-html)
          (hsPkgs.temporary)
          (hsPkgs.directory)
          (hsPkgs.network-uri)
        ];
      };
      tests = {
        "yesod-content-pdf-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.yesod-content-pdf)
          ];
        };
      };
    };
  }