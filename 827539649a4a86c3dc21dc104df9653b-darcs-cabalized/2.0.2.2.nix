{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
      curses = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "darcs-cabalized";
          version = "2.0.2.2";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "<gwern0@gmail.com>";
        author = "David Roundy <droundy@darcs.net>, <darcs-devel@darcs.net>, et al.";
        homepage = "http://darcs.net/";
        url = "";
        synopsis = "David's Advanced Version Control System";
        description = "Darcs is a revision control system, along the lines of CVS or arch.\nThat means that it keeps track of various revisions and branches of\nyour project, allows for changes to propagate from one branch to another.\nDarcs is intended to be an _advanced_ revision control system.\nDarcs has two particularly distinctive features which differ from other,\ncentralized, revision control systems:\n\n* each copy of the source is a fully functional branch, and\n\n* underlying darcs is a consistent and powerful theory of patches.\n\nThe Darcs repository can be found at <http://darcs.net/>.\n\nThis is an unofficial package of Darcs, using Cabal; problems with it may well\nbe the fault of the packager and not the Darcs project.";
        buildType = "Configure";
      };
      components = {
        exes = {
          darcs = {
            depends  = [
              hsPkgs.regex-compat
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.html
              hsPkgs.QuickCheck
              hsPkgs.HUnit
            ] ++ (if _flags.small_base
              then [
                hsPkgs.base
                hsPkgs.unix
                hsPkgs.old-time
                hsPkgs.directory
                hsPkgs.process
                hsPkgs.containers
                hsPkgs.array
                hsPkgs.bytestring
              ]
              else [ hsPkgs.base ]);
            libs = [
              pkgs.z
            ] ++ pkgs.lib.optionals _flags.curses [
              pkgs.curses
              pkgs.curl
            ];
          };
        };
      };
    }