{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      mtl2 = true;
      test = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "cmdlib";
          version = "0.3.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "me@mornfall.net";
        author = "Petr Rockai";
        homepage = "";
        url = "";
        synopsis = "a library for command line parsing & online help";
        description = "A commandline parsing library, based on getopt. Comes with a\npowerful attribute system. Supports complex interfaces with many\noptions and commands, with option & command grouping, with simple\nand convenient API. Even though quite powerful, it strives to keep\nsimple things simple. The library uses \"System.Console.GetOpt\" as\nits backend.\n\nIn comparison to the other commandline handling libraries:\n\nCompared to cmdargs, cmdlib has a pure attribute system and is\nbased on GetOpt for help formatting & argument parsing. Cmdlib may\nalso be more extendable due to typeclass design, and can use\nuser-supplied types for option arguments.\n\nCmdargs >= 0.4 can optionally use a pure attribute system,\nalthough this is clearly an add-on and the API is a second-class\ncitizen in relation to the impure version.\n\nGetOpt and parseargs both require explicit flag representation, so\nthey live a level below cmdlib. GetOpt is in fact used as a\nbackend by cmdlib.";
        buildType = "Simple";
      };
      components = {
        cmdlib = {
          depends  = [
            hsPkgs.base
            hsPkgs.syb
            hsPkgs.split
          ] ++ (if _flags.mtl2
            then [
              hsPkgs.mtl
              hsPkgs.transformers
            ]
            else [ hsPkgs.mtl ]);
        };
        exes = {
          cmdlib-test = {};
          cmdlib-rectest = {};
        };
      };
    }