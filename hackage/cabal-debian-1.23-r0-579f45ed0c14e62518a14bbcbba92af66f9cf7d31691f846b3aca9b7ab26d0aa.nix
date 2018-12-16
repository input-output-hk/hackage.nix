{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { cabal19 = true; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "cabal-debian";
        version = "1.23";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "David Fox <dsf@seereason.com>";
      author = "David Fox <dsf@seereason.com>";
      homepage = "http://src.seereason.com/cabal-debian";
      url = "";
      synopsis = "Create a debianization for a cabal package";
      description = "A program which creates a debian subdirectory containing the required\nfiles to build a deb.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cabal-debian" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.Cabal)
            (hsPkgs.containers)
            (hsPkgs.debian)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.pretty)
            (hsPkgs.process)
            (hsPkgs.regex-tdfa)
            (hsPkgs.unix)
            (hsPkgs.Unixutils)
            (hsPkgs.utf8-string)
          ] ++ [ (hsPkgs.Cabal) ];
        };
      };
    };
  }