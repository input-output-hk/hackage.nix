{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "conduit-vfs"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c)2019 Robert Fischer. All Rights Reserved. See LICENSE for liscensing terms.";
      maintainer = "smokejumperit@gmail.com";
      author = "Robert Fischer";
      homepage = "https://github.com/RobertFischer/vfs-conduit#readme";
      url = "";
      synopsis = "Virtual file system for Conduit; disk, pure, and in-memory impls.";
      description = "The goal of this package is to provide a common library and the core implementations for things that can be made to look like filesystems. In this package, a \"filesystem\" is tree of nodes, where the leaf nodes are files and the rest are directories. A \"directory\" is defined as a node that contains other nodes, and those other nodes are each keyed by a name. A \"file\" is defined as a collection of (possibly empty) bytes.\nThis package includes the core types for a Virtual File System (VFS) abstraction for conduit, along with three implementations. The implementations are \"disk\" (write to the underlying filesystem), \"in-memory\" (store files in an MVar), and \"pure\" (pass state in a State monad). Because of the nature of conduits, this library defaults to lazy implementations of various data structures, including lazy ByteStrings and lazy HashMaps. Any overhead in space should be more than warranted by the savings through just-in-time computations.\nFor more information, see the README on GitHub at <https://github.com/RobertFischer/vfs-conduit#README.md>";
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
          (hsPkgs.directory)
          (hsPkgs.extra)
          (hsPkgs.filepath)
          (hsPkgs.monad-loops)
          (hsPkgs.mono-traversable)
          (hsPkgs.resourcet)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unix)
          (hsPkgs.unliftio)
          (hsPkgs.unordered-containers)
          ];
        };
      tests = {
        "conduit-vfs-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.classy-prelude)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.conduit-vfs)
            (hsPkgs.directory)
            (hsPkgs.extra)
            (hsPkgs.filepath)
            (hsPkgs.monad-loops)
            (hsPkgs.mono-traversable)
            (hsPkgs.resourcet)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unix)
            (hsPkgs.unliftio)
            (hsPkgs.unordered-containers)
            ];
          };
        };
      };
    }