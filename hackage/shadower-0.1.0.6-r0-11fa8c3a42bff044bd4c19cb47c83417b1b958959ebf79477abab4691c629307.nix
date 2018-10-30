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
        name = "shadower";
        version = "0.1.0.6";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "karun012@gmail.com";
      author = "Karun Ramakrishnan";
      homepage = "http://github.com/karun012/shadower";
      url = "";
      synopsis = "An automated way to run doctests in files that are changing";
      description = "Shadower watches folders with Haskell sources, and runs doctests in files that are modified";
      buildType = "Simple";
    };
    components = {
      exes = {
        "shadower" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.fsnotify)
            (hsPkgs.process)
            (hsPkgs.system-filepath)
            (hsPkgs.text)
            (hsPkgs.filemanip)
            (hsPkgs.MissingH)
            (hsPkgs.doctest)
            (hsPkgs.safe)
            (hsPkgs.mtl)
          ];
        };
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.fsnotify)
            (hsPkgs.process)
            (hsPkgs.system-filepath)
            (hsPkgs.text)
            (hsPkgs.filemanip)
            (hsPkgs.MissingH)
            (hsPkgs.doctest)
            (hsPkgs.safe)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }