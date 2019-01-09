{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hark"; version = "0.2"; };
      license = "LicenseRef-GPL";
      copyright = "(C) 2009 Markus Dittrich";
      maintainer = "Markus Dittrich <haskelladdict@gmail.com>";
      author = "Markus Dittrich <haskelladdict@gmail.com>";
      homepage = "http://code.google.com/p/hark/";
      url = "";
      synopsis = "A Gentoo package query tool.";
      description = "hark is a query tool for the package database of\ninstalled packages on Gentoo Linux systems.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hark" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.mtl)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.regex-pcre)
            (hsPkgs.directory)
            (hsPkgs.old-time)
            (hsPkgs.old-locale)
            ];
          };
        };
      };
    }