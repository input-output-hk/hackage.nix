{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "mathblog"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jonathan Daugherty <drcygnus@gmail.com>";
      author = "Jonathan Daugherty <drcygnus@gmail.com>";
      homepage = "http://repos.codevine.org/mathblog/";
      url = "";
      synopsis = "A program for creating and managing a\nstatic, mathematically-inclined weblog";
      description = "This package provides a program for creating and\nmanaging a statically-generated, VCS-friendly,\nmathematically-inclined weblog.  If you're\ninterested in managing a blog with few moving\nparts and support for embedded LaTeX math and the\nUNIX editor of your choice, then this is the\nblogging platform for you!  For detailed\ninformation and a full feature list, please see\nthe README.\nTo see a live example of this software, you might\nconsider taking a look at my math-oriented blog\nat <http://dw.codevine.org/>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "mb" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.pandoc)
            (hsPkgs.unix)
            (hsPkgs.process)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            (hsPkgs.SHA)
            (hsPkgs.bytestring)
            (hsPkgs.HStringTemplate)
            (hsPkgs.ConfigFile)
            ];
          };
        };
      };
    }