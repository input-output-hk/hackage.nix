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
      specVersion = "1.6";
      identifier = {
        name = "binembed";
        version = "0.1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "claude@mathr.co.uk";
      author = "Claude Heiland-Allen";
      homepage = "http://code.mathr.co.uk/binembed";
      url = "";
      synopsis = "Embed data into object files.";
      description = "Given a list of files and directories to include,\nbinembed generates assembly source to include the data\ninto an object file that can be linked to a library or\nexecutable, along with interface modules for higher\nlevel access from languages such as C, Haskell, ...\n\nSee the package 'binembed-example' for a concrete\nexample.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.Cabal)
        ];
      };
      exes = {
        "binembed" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.dlist)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }