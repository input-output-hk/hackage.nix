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
        name = "pdfinfo";
        version = "1.5.2";
      };
      license = "BSD-3-Clause";
      copyright = "2013 Chris Done";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done";
      homepage = "https://github.com/chrisdone/pdfinfo";
      url = "";
      synopsis = "Wrapper around the pdfinfo command.";
      description = "Just a wrapper around the pdfinfo command (for collecting PDF file info). See man pdfinfo.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.old-locale)
          (hsPkgs.time)
          (hsPkgs.process-extras)
          (hsPkgs.text)
          (hsPkgs.mtl)
        ];
      };
    };
  }