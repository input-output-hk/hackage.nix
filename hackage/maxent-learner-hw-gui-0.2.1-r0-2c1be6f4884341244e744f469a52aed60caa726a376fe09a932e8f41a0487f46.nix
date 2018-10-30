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
        name = "maxent-learner-hw-gui";
        version = "0.2.1";
      };
      license = "LicenseRef-GPL";
      copyright = "2016-2017 George Steel and Peter Jurgec";
      maintainer = "george.steel@gmail.com";
      author = "George Steel";
      homepage = "https://github.com/george-steel/maxent-learner";
      url = "";
      synopsis = "GUI for maxent-learner-hw";
      description = "This is a GUI frontent for maxent-learner-hw using GTK.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "phono-learner-hw-gui" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.maxent-learner-hw)
            (hsPkgs.containers)
            (hsPkgs.text)
            (hsPkgs.file-embed)
            (hsPkgs.parallel)
            (hsPkgs.deepseq)
            (hsPkgs.array)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.random)
            (hsPkgs.gtk3)
            (hsPkgs.glib)
            (hsPkgs.frpnow)
            (hsPkgs.frpnow-gtk3)
            (hsPkgs.raw-strings-qq)
            (hsPkgs.bytestring)
            (hsPkgs.tuple)
            (hsPkgs.async)
            (hsPkgs.cairo)
            (hsPkgs.Chart)
            (hsPkgs.Chart-cairo)
          ];
        };
      };
    };
  }