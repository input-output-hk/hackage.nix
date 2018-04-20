{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      base4 = true;
      hpc = false;
      threaded = false;
      lhc-regress = false;
      with-base = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "lhc";
          version = "0.6.20081210";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "lemmih@gmail.com";
        author = "John Meacham, David Himmelstrup";
        homepage = "http://lhc.seize.it/";
        url = "";
        synopsis = "LHC Haskell Compiler";
        description = "lhc is a haskell compiler which aims to produce the most efficient programs possible via whole\nprogram analysis and other optimizations.";
        buildType = "Custom";
      };
      components = {
        exes = {
          lhc = {
            depends  = [
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.pretty
              hsPkgs.array
              hsPkgs.bytestring
              hsPkgs.pureMD5
              hsPkgs.binary
              hsPkgs.directory
              hsPkgs.haskeline
              hsPkgs.random
              hsPkgs.regex-compat
              hsPkgs.graphviz
              hsPkgs.fgl
              hsPkgs.unix
              hsPkgs.zlib
              hsPkgs.old-time
              hsPkgs.haskell98
              hsPkgs.utf8-string
              hsPkgs.stringtable-atom
              hsPkgs.derive
              hsPkgs.Cabal
              hsPkgs.filepath
              hsPkgs.ansi-wl-pprint
              hsPkgs.ansi-terminal
            ] ++ (if _flags.base4
              then [ hsPkgs.base hsPkgs.syb ]
              else [ hsPkgs.base ]);
          };
          lhc-regress = {
            depends  = [
              hsPkgs.process
            ] ++ [ hsPkgs.base ];
          };
        };
      };
    }