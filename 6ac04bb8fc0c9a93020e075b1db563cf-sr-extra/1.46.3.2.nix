{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      network-uri = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "sr-extra";
        version = "1.46.3.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "David Fox <dsf@seereason.com>";
      author = "David Fox";
      homepage = "https://github.com/seereason/sr-extra";
      url = "";
      synopsis = "A grab bag of modules.";
      description = "A hodge-podge of functions and modules that do not have a better home";
      buildType = "Simple";
    };
    components = {
      "sr-extra" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.bzlib)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.HUnit)
          (hsPkgs.mtl)
          (hsPkgs.old-locale)
          (hsPkgs.old-time)
          (hsPkgs.pretty)
          (hsPkgs.process)
          (hsPkgs.pureMD5)
          (hsPkgs.QuickCheck)
          (hsPkgs.random)
          (hsPkgs.regex-compat)
          (hsPkgs.time)
          (hsPkgs.unix)
          (hsPkgs.Unixutils)
          (hsPkgs.zlib)
        ] ++ (if _flags.network-uri
          then [ (hsPkgs.network-uri) ]
          else [ (hsPkgs.network) ]);
      };
    };
  }