{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "Coadjute";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Matti Niemenmaa <matti.niemenmaa+coadjute@iki.fi>";
      author = "Matti Niemenmaa";
      homepage = "http://iki.fi/matti.niemenmaa/coadjute/";
      url = "";
      synopsis = "A generic build tool";
      description = "Coadjute is a generic build tool, intended as an easier to use and more\nportable replacement for make. It's not tailored toward any particular\nlanguage, and is not meant to replace tools which target a specific\nenvironment.\n\nPortability is striven towards in two ways:\n- You don't have to deal with the idiosyncrasies of many make implementations\n(well, people don't, but they call their GNU Make files makefiles\ninstead of GNUmakefiles, which causes misunderstandings).\n- You have Haskell at your disposal, and are encouraged to use that\nwhenever possible instead of system-specific binaries like the POSIX\ncommands we all know and love.\n\nWith support for:\n- Parallel task performing.\n- Advanced out-of-dateness detection:\n- Choice between timestamps and hashes.\n- Keeping track of what arguments have been passed.\n- Haskell!";
      buildType = "Simple";
    };
    components = {
      "Coadjute" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.old-time)
          (hsPkgs.pretty)
          (hsPkgs.bytestring-csv)
          (hsPkgs.fgl)
          (hsPkgs.pureMD5)
          (hsPkgs.safe)
          (hsPkgs.utf8-string)
        ];
      };
    };
  }