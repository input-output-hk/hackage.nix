{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "heyefi";
        version = "2.0.0.2";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "ryan@ryantm.com";
      author = "Ryan Mulligan";
      homepage = "https://github.com/ryantm/heyefi";
      url = "";
      synopsis = "A server for Eye-Fi SD cards.";
      description = "This server listens for Eye-Fi cards that want to upload files to a computer and stores them in an upload directory. It is meant to be run as a system daemon.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "heyefi" = {
          depends  = [
            (hsPkgs.HandsomeSoup)
            (hsPkgs.MissingH)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.configurator)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.filepath)
            (hsPkgs.http-types)
            (hsPkgs.hxt)
            (hsPkgs.iso8601-time)
            (hsPkgs.mtl)
            (hsPkgs.multipart)
            (hsPkgs.optparse-applicative)
            (hsPkgs.random)
            (hsPkgs.stm)
            (hsPkgs.tar)
            (hsPkgs.temporary)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unix)
            (hsPkgs.unordered-containers)
            (hsPkgs.utf8-string)
            (hsPkgs.wai)
            (hsPkgs.warp)
          ];
        };
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.HandsomeSoup)
            (hsPkgs.MissingH)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.configurator)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.filepath)
            (hsPkgs.hspec)
            (hsPkgs.hspec-wai)
            (hsPkgs.http-types)
            (hsPkgs.hxt)
            (hsPkgs.iso8601-time)
            (hsPkgs.mtl)
            (hsPkgs.multipart)
            (hsPkgs.optparse-applicative)
            (hsPkgs.random)
            (hsPkgs.silently)
            (hsPkgs.stm)
            (hsPkgs.tar)
            (hsPkgs.temporary)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unix)
            (hsPkgs.unordered-containers)
            (hsPkgs.utf8-string)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
            (hsPkgs.warp)
          ];
        };
      };
    };
  }