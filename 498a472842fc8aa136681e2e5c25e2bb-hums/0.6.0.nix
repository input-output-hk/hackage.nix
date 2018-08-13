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
      specVersion = "1.18";
      identifier = {
        name = "hums";
        version = "0.6.0";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Bardur Arantsson <bardur@scientician.net>";
      author = "Bardur Arantsson";
      homepage = "";
      url = "";
      synopsis = "Haskell UPnP Media Server";
      description = "A simple UPnP Media Server.\n\nCurrently this has only been tested with a PlayStation 3 client. Any help/patches for getting it to work with other clients would be much appreciated.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hums" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.ConfigFile)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.HaXml)
            (hsPkgs.http-types)
            (hsPkgs.hxt)
            (hsPkgs.MissingH)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.parsec)
            (hsPkgs.system-uuid)
            (hsPkgs.system-filepath)
            (hsPkgs.system-fileio)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unix)
            (hsPkgs.unordered-containers)
            (hsPkgs.case-insensitive)
            (hsPkgs.wai)
            (hsPkgs.warp)
          ];
        };
      };
    };
  }