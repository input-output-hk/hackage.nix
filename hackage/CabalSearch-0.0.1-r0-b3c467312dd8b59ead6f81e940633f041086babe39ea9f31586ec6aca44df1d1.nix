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
      specVersion = "1.8";
      identifier = {
        name = "CabalSearch";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright 2011 Johan Brinch";
      maintainer = "Johan Brinch <brinchj@gmail.com>";
      author = "Johan Brinch <brinchj@gmail.com>";
      homepage = "http://github.com/brinchj/cabalsearch";
      url = "";
      synopsis = "Search cabal packages by name";
      description = "CabalSearch builds an index of cabal packages and search through them by\nname. It acts as a 'cabal list' replacement. To get started, install the\npackage and run: @cabalsearch --rebuild@. Now try it out with a query:\n@cabalsearch cabal@.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cabalsearch" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HDBC)
            (hsPkgs.HDBC-sqlite3)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.unix)
          ];
        };
      };
    };
  }