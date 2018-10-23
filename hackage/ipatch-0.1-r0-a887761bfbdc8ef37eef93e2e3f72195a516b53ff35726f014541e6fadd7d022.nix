{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "ipatch";
        version = "0.1";
      };
      license = "GPL-2.0-only";
      copyright = "2010 Joachim Breitner";
      maintainer = "mail@joachim-breitner.de";
      author = "Joachim Breitner";
      homepage = "http://darcs.nomeata.de/ipatch";
      url = "";
      synopsis = "interactive patch editor";
      description = "ipatch brings the power and convenience of selecting and editing patches in\nDarcs to those who are not using the Darcs version control system.\n\nIt allows the user to interactively split a patch file into several patch\nfile, as well as applying a patch interactively and possibly partially.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "ipatch" = {
          depends  = [
            (hsPkgs.darcs-beta)
            (hsPkgs.base)
            (hsPkgs.unix)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }