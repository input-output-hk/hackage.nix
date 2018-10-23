{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { tests = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "cabal-debian";
        version = "3.8.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "David Fox <dsf@seereason.com>";
      author = "David Fox <dsf@seereason.com>";
      homepage = "http://src.seereason.com/debian-tools/cabal-debian";
      url = "";
      synopsis = "Create a debianization for a cabal package";
      description = "Tool for creating debianizations of Haskell packages based on the\n.cabal file.  If apt-file is installed it will use it to discover\nwhat is the debian package name of a C library.  Basic usage is via\nthe cabal-debian executable.  A more powerful but still undocumented\nprogrammatic interface is also provided.  Normal usage for this is to\nput a script in debian/Debianize.hs (such as the one in this source\npackage) which is run to create the debianization.";
      buildType = "Simple";
    };
    components = {
      "cabal-debian" = {
        depends  = [
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.base)
          (hsPkgs.Cabal)
          (hsPkgs.containers)
          (hsPkgs.data-lens)
          (hsPkgs.debian)
          (hsPkgs.Diff)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.hsemail)
          (hsPkgs.HUnit)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.process)
          (hsPkgs.pureMD5)
          (hsPkgs.regex-tdfa)
          (hsPkgs.syb)
          (hsPkgs.text)
          (hsPkgs.unix)
          (hsPkgs.utf8-string)
        ];
      };
      exes = {
        "cabal-debian" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.cabal-debian)
            (hsPkgs.containers)
            (hsPkgs.data-lens)
          ];
        };
      };
    };
  }