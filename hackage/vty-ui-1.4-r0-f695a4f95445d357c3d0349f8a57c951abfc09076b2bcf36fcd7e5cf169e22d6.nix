{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { testing = false; demos = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "vty-ui"; version = "1.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jonathan Daugherty <jtd@galois.com>";
      author = "Jonathan Daugherty <jtd@galois.com>";
      homepage = "http://codevine.org/vty-ui/";
      url = "";
      synopsis = "An interactive terminal user interface library for Vty";
      description = "An extensible library of user interface widgets for composing and\nlaying out Vty user interfaces.  This library provides a collection\nof widgets for building and composing interactive interactive,\nevent-driven terminal interfaces.  This library is intended to make\nnon-trivial user interfaces easy to express and modify without\nhaving to worry about terminal size.\n\nBe sure to check out the user manual for the version you're using\nat: <http://codevine.org/vty-ui/>\n\nBuild with the 'demos' flag to get a set of demonstration programs\nto see some of the things the library can do!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.vty)
          (hsPkgs.containers)
          (hsPkgs.regex-base)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.unix)
          (hsPkgs.mtl)
          (hsPkgs.stm)
          (hsPkgs.array)
          ];
        };
      exes = {
        "vty-ui-tests" = { depends = [ (hsPkgs.QuickCheck) ]; };
        "vty-ui-list-demo" = {
          depends = [ (hsPkgs.base) (hsPkgs.mtl) (hsPkgs.vty) ];
          };
        "vty-ui-complex-demo" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.bytestring)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            (hsPkgs.vty)
            ];
          };
        "vty-ui-dirbrowser-demo" = {
          depends = [ (hsPkgs.base) (hsPkgs.mtl) (hsPkgs.vty) ];
          };
        "vty-ui-phoneinput-demo" = {
          depends = [ (hsPkgs.base) (hsPkgs.mtl) (hsPkgs.vty) ];
          };
        "vty-ui-dialog-demo" = {
          depends = [ (hsPkgs.base) (hsPkgs.mtl) (hsPkgs.vty) ];
          };
        };
      };
    }