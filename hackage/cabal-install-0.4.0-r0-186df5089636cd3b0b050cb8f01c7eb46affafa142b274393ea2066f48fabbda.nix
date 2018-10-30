{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      old-base = false;
      bytestring-in-base = true;
    };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "cabal-install";
        version = "0.4.0";
      };
      license = "BSD-3-Clause";
      copyright = "2005 Lemmih <lemmih@gmail.com>, 2006 Paolo Martini <paolo@nemail.it>";
      maintainer = "cabal-devel@haskell.org";
      author = "Lemmih <lemmih@gmail.com>, Paolo Martini <paolo@nemail.it>";
      homepage = "";
      url = "";
      synopsis = "Automatic package handling for Haskell";
      description = "apt-get like tool for Haskell. The \\'cabal\\' command-line program\nsimplifies the process of managing Haskell software by automating the\nfetching, configuration, compilation and installation of Haskell\nlibraries and programs.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cabal" = {
          depends  = ([
            (hsPkgs.Cabal)
            (hsPkgs.filepath)
            (hsPkgs.network)
            (hsPkgs.zlib)
            (hsPkgs.HTTP)
          ] ++ (if flags.old-base
            then [ (hsPkgs.base) ]
            else [
              (hsPkgs.base)
              (hsPkgs.process)
              (hsPkgs.directory)
              (hsPkgs.pretty)
            ])) ++ (if flags.bytestring-in-base
            then [ (hsPkgs.base) ]
            else [
              (hsPkgs.base)
              (hsPkgs.bytestring)
            ]);
        };
      };
    };
  }