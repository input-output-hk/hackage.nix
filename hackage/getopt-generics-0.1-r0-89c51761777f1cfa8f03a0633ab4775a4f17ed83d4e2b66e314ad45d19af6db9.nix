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
        name = "getopt-generics";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Zalora South East Asia Pte Ltd";
      maintainer = "linh.nguyen@zalora.com, soenke.hahn@zalora.com";
      author = "Linh Nguyen, Sönke Hahn";
      homepage = "";
      url = "";
      synopsis = "Simple command line argument parsing";
      description = "\"getopt-generics\" tries to make it very simple to create command line\ninterfaces. Users just specify a simple data type (and derive some type\nclasses for that type) and \"getopt-generics\" creates a command line argument\nparser.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.generics-sop)
          (hsPkgs.safe)
        ];
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.getopt-generics)
            (hsPkgs.generics-sop)
            (hsPkgs.hspec)
            (hsPkgs.silently)
          ];
        };
      };
    };
  }