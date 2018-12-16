{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      base4 = true;
      hpc = false;
      threaded = false;
    };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "lhc";
        version = "0.6.20081127";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "lemmih@gmail.com";
      author = "John Meacham, David Himmelstrup";
      homepage = "http://lhc.seize.it/";
      url = "";
      synopsis = "LHC Haskell Compiler";
      description = "lhc is a haskell compiler which aims to produce the most efficient programs possible via whole\nprogram analysis and other optimizations.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "lhc" = {
          depends = [
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.pretty)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.pureMD5)
            (hsPkgs.binary)
            (hsPkgs.directory)
            (hsPkgs.haskeline)
            (hsPkgs.random)
            (hsPkgs.regex-compat)
            (hsPkgs.graphviz)
            (hsPkgs.fgl)
            (hsPkgs.unix)
            (hsPkgs.zlib)
            (hsPkgs.old-time)
            (hsPkgs.haskell98)
            (hsPkgs.utf8-string)
            (hsPkgs.stringtable-atom)
            (hsPkgs.derive)
            (hsPkgs.filepath)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.ansi-terminal)
          ] ++ (if flags.base4
            then [
              (hsPkgs.base)
              (hsPkgs.syb)
            ]
            else [ (hsPkgs.base) ]);
        };
      };
    };
  }