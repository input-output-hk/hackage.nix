{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tn"; version = "1.0.2"; };
      license = "GPL-3.0-only";
      copyright = "Copyright (C) 2015 Peter Harpending";
      maintainer = "Peter Harpending <peter@harpending.org>";
      author = "Peter Harpending";
      homepage = "";
      url = "";
      synopsis = "A simple daily journal program";
      description = "tn is a simple program to keep daily journals. It's terrible right now, so\nplease don't try to use it.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "tn" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.safe)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.yaml)
            ];
          };
        };
      };
    }