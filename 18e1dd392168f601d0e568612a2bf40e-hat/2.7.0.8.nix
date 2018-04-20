{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hat";
          version = "2.7.0.8";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "(c) 2000-2012 Hat team";
        maintainer = "oc@kent.ac.uk";
        author = "Hat team";
        homepage = "http://www.cs.kent.ac.uk/~oc";
        url = "";
        synopsis = "The Haskell tracer, generating and viewing Haskell execution traces";
        description = "hat-trans transforms Module.hs into Hat/Module.hs such that when the program is\nexecuted, a trace file Programname.hat is generated.\nVarious tools (hat-trail, hat-observe, hat-explore ...) then allow viewing the\ntrace file in different ways, to locate a bug or understand how a program works.\nThis is the first release of Hat under Cabal.\nIt is the least possible update to make Hat work with Cabal.\nHat 2.07 works only with ghc for Haskell 98 (plus a few extensions) and\nthe standard Haskell 98 libraries plus some Haskell 2010 libraries.\nAlthough it should build on any operating system,\nmost viewing tools use ASCII console escape sequences and they open xterms;\nhence they will only work well under Unix and X11.\nInstallation:\n> cabal -v install\nFlag -v allows you to see what is going on. Building takes a long time\n(one module has 25.000 lines of code). Don't worry about numerous warning messages.\nUse:\n> hat-make MyProgram.hs\ntransforms and compiles all modules of your program and produces the tracing\nversion Hat/MyProgram.\nRun your program\n> Hat/MyProgram\nwhich will produce trace files MyProgram.hat*\nUse the viewing tools to explore the trace:\n> hat-trail / hat-observe / hat-explore /...   MyProgram\nThere is documentation in the \"docs\" folder, but much of it is outdated.\nThere are a few small programs for exploring tracing in the \"examples\" folder.";
        buildType = "Simple";
      };
      components = {
        hat = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.random
            hsPkgs.process
            hsPkgs.old-time
            hsPkgs.old-locale
          ];
        };
        exes = {
          hat-trans = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.directory
            ];
          };
          hat-trail = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.process
            ];
          };
          hat-observe = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
              hsPkgs.haskeline
            ];
          };
          hat-stack = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
            ];
          };
          hat-explore = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
            ];
          };
          hat-detect = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.process
              hsPkgs.haskeline
            ];
          };
          hat-check = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
            ];
          };
          hat-view = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
              hsPkgs.directory
            ];
          };
          hat-cover = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
            ];
          };
          black-hat = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
            ];
          };
          hat-nonterm = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
            ];
          };
          hat-anim = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
              hsPkgs.containers
            ];
          };
          pretty-hat = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
              hsPkgs.containers
            ];
          };
          hat-delta = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
              hsPkgs.containers
            ];
          };
          hat-make = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
              hsPkgs.directory
            ];
          };
        };
      };
    }