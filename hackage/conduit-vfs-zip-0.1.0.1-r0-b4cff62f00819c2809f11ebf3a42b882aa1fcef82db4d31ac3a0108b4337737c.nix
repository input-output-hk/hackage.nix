{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "conduit-vfs-zip"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c)2019 Robert Fischer. All Rights Reserved. See LICENSE for liscensing terms.";
      maintainer = "smokejumperit@gmail.com";
      author = "Robert Fischer";
      homepage = "https://github.com/RobertFischer/vfs-conduit#readme";
      url = "";
      synopsis = "Zip archive interface for the Conduit Virtual File System.";
      description = "This package provides the ability to work with zip archives as a part of a conduit. It does this by treating the zip file as a virtual file system and acting on it that way. The zip archive access does not require any IO, and so can be used in pure conduits. If you would like to have the zip file read from disk and then persisted at the beginning and end of your conduit run, you can do that but it does require constructing the Zip VFS within a MonadResource.\nFor more information, please see the README on GitHub at <https://github.com/RobertFischer/vfs-conduit#README.md>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.classy-prelude)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.conduit-vfs)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.extra)
          (hsPkgs.filepath)
          (hsPkgs.monad-loops)
          (hsPkgs.mono-traversable)
          (hsPkgs.mtl)
          (hsPkgs.resourcet)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unix)
          (hsPkgs.unliftio)
          (hsPkgs.unordered-containers)
          (hsPkgs.zip-archive)
          ];
        };
      tests = {
        "conduit-vfs-zip-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.classy-prelude)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.conduit-vfs)
            (hsPkgs.conduit-vfs-zip)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.extra)
            (hsPkgs.filepath)
            (hsPkgs.monad-loops)
            (hsPkgs.mono-traversable)
            (hsPkgs.mtl)
            (hsPkgs.resourcet)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unix)
            (hsPkgs.unliftio)
            (hsPkgs.unordered-containers)
            (hsPkgs.zip-archive)
            ];
          };
        };
      };
    }