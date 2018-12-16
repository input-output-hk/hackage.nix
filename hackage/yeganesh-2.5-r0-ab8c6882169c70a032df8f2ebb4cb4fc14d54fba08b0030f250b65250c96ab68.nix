{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { profiling = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "yeganesh";
        version = "2.5";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "daniel@wagner-home.com";
      author = "Daniel Wagner";
      homepage = "http://dmwit.com/yeganesh";
      url = "";
      synopsis = "small dmenu wrapper";
      description = "I get so annoyed when I go to use dmenu, and the three\nprograms I use every day aren't at the beginning of the\nlist.  Let's make it so, and automatically!";
      buildType = "Simple";
    };
    components = {
      exes = {
        "yeganesh" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.strict)
            (hsPkgs.time)
            (hsPkgs.unix)
            (hsPkgs.xdg-basedir)
          ];
        };
        "yeganesh-strip" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.strict)
            (hsPkgs.time)
            (hsPkgs.unix)
            (hsPkgs.xdg-basedir)
          ];
        };
      };
    };
  }