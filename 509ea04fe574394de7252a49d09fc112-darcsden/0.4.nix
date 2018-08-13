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
      specVersion = "1.6";
      identifier = {
        name = "darcsden";
        version = "0.4";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "i.am@toogeneric.com";
      author = "Alex Suraci";
      homepage = "http://darcsden.com/";
      url = "";
      synopsis = "darcs project hosting and collaboration";
      description = "A web and SSH server for hosting darcs projects and collaborating with\nothers.\n\nSee darcsden --readme for installation instructions.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "darcsden" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base64-string)
            (hsPkgs.bytestring)
            (hsPkgs.CouchDB)
            (hsPkgs.containers)
            (hsPkgs.darcs)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.harp)
            (hsPkgs.hashed-storage)
            (hsPkgs.hsp)
            (hsPkgs.json)
            (hsPkgs.mtl)
            (hsPkgs.old-locale)
            (hsPkgs.old-time)
            (hsPkgs.pandoc)
            (hsPkgs.process)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.redis)
            (hsPkgs.SHA)
            (hsPkgs.ssh)
            (hsPkgs.snap-core)
            (hsPkgs.snap-server)
            (hsPkgs.system-uuid)
            (hsPkgs.split)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.xhtml)
          ];
        };
        "darcsden-ssh" = {};
      };
    };
  }