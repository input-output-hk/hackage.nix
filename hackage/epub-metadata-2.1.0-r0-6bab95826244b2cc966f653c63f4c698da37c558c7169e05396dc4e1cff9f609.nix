{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "epub-metadata"; version = "2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2010, 2011 Dino Morelli";
      maintainer = "Dino Morelli <dino@ui3.info>";
      author = "Dino Morelli";
      homepage = "http://ui3.info/d/proj/epub-metadata.html";
      url = "";
      synopsis = "Library and utility for parsing and manipulating ePub OPF package data";
      description = "Library and utility for parsing and manipulating ePub\nOPF package data. An attempt has been made here to\nvery thoroughly implement the OPF Package Document\nspecification. Also included is a command-line\nutility to dump OPF package data to stdout in a\nhuman-readable form.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.hxt)
          (hsPkgs.mtl)
          (hsPkgs.regex-compat)
          (hsPkgs.zip-archive)
          ];
        };
      exes = { "epubmeta" = { depends = [ (hsPkgs.base) ]; }; };
      };
    }