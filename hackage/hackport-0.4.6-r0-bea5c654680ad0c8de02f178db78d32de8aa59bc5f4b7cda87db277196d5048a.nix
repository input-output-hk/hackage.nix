{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { split-base = true; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hackport";
        version = "0.4.6";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Gentoo Haskell team <haskell@gentoo.org>";
      author = "Henning Günther, Duncan Coutts, Lennart Kolmodin";
      homepage = "";
      url = "";
      synopsis = "Hackage and Portage integration tool";
      description = "A command line tool to manage an overlay of Gentoo ebuilds\nthat are generated from a hackage repo of Cabal packages.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hackport" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.filepath)
            (hsPkgs.parsec)
            (hsPkgs.network)
            (hsPkgs.network-uri)
            (hsPkgs.pretty)
            (hsPkgs.regex-compat)
            (hsPkgs.MissingH)
            (hsPkgs.old-locale)
            (hsPkgs.HTTP)
            (hsPkgs.zlib)
            (hsPkgs.tar)
            (hsPkgs.xml)
            (hsPkgs.array)
            (hsPkgs.extensible-exceptions)
            (hsPkgs.time)
            (hsPkgs.unix)
          ] ++ (if flags.split-base
            then [
              (hsPkgs.base)
              (hsPkgs.directory)
              (hsPkgs.containers)
              (hsPkgs.process)
              (hsPkgs.old-time)
              (hsPkgs.bytestring)
            ]
            else [ (hsPkgs.base) ]);
        };
        "hackport-guess-ghc-version" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.parsec)
            (hsPkgs.network)
            (hsPkgs.network-uri)
            (hsPkgs.pretty)
            (hsPkgs.regex-compat)
            (hsPkgs.HTTP)
            (hsPkgs.zlib)
            (hsPkgs.tar)
            (hsPkgs.array)
            (hsPkgs.extensible-exceptions)
          ] ++ (if flags.split-base
            then [
              (hsPkgs.base)
              (hsPkgs.directory)
              (hsPkgs.containers)
              (hsPkgs.process)
              (hsPkgs.old-time)
              (hsPkgs.bytestring)
            ]
            else [ (hsPkgs.base) ]);
        };
      };
      tests = {
        "test-resolve-category" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.extensible-exceptions)
            (hsPkgs.filepath)
            (hsPkgs.HUnit)
            (hsPkgs.pretty)
            (hsPkgs.process)
            (hsPkgs.time)
            (hsPkgs.unix)
            (hsPkgs.xml)
          ];
        };
        "test-print-deps" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.extensible-exceptions)
            (hsPkgs.filepath)
            (hsPkgs.HUnit)
            (hsPkgs.pretty)
            (hsPkgs.process)
            (hsPkgs.time)
            (hsPkgs.unix)
            (hsPkgs.xml)
          ];
        };
        "test-normalize-deps" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.extensible-exceptions)
            (hsPkgs.filepath)
            (hsPkgs.HUnit)
            (hsPkgs.pretty)
            (hsPkgs.process)
            (hsPkgs.time)
            (hsPkgs.unix)
            (hsPkgs.xml)
          ];
        };
      };
    };
  }