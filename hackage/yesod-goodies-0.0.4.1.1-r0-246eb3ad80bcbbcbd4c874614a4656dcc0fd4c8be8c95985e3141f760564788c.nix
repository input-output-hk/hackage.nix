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
      specVersion = "1.6";
      identifier = {
        name = "yesod-goodies";
        version = "0.0.4.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "me@pbrisbin.com";
      author = "Patrick Brisbin";
      homepage = "http://github.com/pbrisbin/yesod-goodies";
      url = "";
      synopsis = "A collection of various small helpers useful in any yesod application.";
      description = "A collection of various small helpers useful in any yesod application.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.pandoc)
          (hsPkgs.yesod)
          (hsPkgs.yesod-form)
          (hsPkgs.pureMD5)
          (hsPkgs.HTTP)
          (hsPkgs.directory)
          (hsPkgs.time)
          (hsPkgs.old-locale)
        ];
      };
    };
  }