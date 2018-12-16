{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { scripts = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "bdcs";
        version = "0.1.0";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "clumens@redhat.com";
      author = "Chris Lumens";
      homepage = "https://github.com/weldr/bdcs";
      url = "";
      synopsis = "Tools for managing a content store of software packages";
      description = "This module provides a library and various tools for managing a content store and\nmetadata database.  These store the contents of software packages that make up a\nLinux distribution as well as a lot of metadata about those software packages.\nTools are inclued to construct those stores from pre-built software and to pull\nfiles back out to turn into bootable images.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.codec-rpm)
          (hsPkgs.cond)
          (hsPkgs.conduit)
          (hsPkgs.conduit-combinators)
          (hsPkgs.conduit-extra)
          (hsPkgs.containers)
          (hsPkgs.content-store)
          (hsPkgs.cpio-conduit)
          (hsPkgs.cryptonite)
          (hsPkgs.directory)
          (hsPkgs.esqueleto)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.gi-gio)
          (hsPkgs.gi-glib)
          (hsPkgs.gi-ostree)
          (hsPkgs.gitrev)
          (hsPkgs.http-conduit)
          (hsPkgs.memory)
          (hsPkgs.monad-control)
          (hsPkgs.monad-logger)
          (hsPkgs.mtl)
          (hsPkgs.network-uri)
          (hsPkgs.parsec)
          (hsPkgs.parsec-numbers)
          (hsPkgs.persistent)
          (hsPkgs.persistent-sqlite)
          (hsPkgs.persistent-template)
          (hsPkgs.process)
          (hsPkgs.regex-pcre)
          (hsPkgs.resourcet)
          (hsPkgs.split)
          (hsPkgs.tar)
          (hsPkgs.tar-conduit)
          (hsPkgs.temporary)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unix)
          (hsPkgs.unordered-containers)
          (hsPkgs.xml-conduit)
        ];
        pkgconfig = [
          (pkgconfPkgs.ostree-1)
        ];
      };
      exes = {
        "bdcs" = {
          depends = [
            (hsPkgs.bdcs)
            (hsPkgs.base)
            (hsPkgs.cond)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.monad-loops)
            (hsPkgs.process)
            (hsPkgs.text)
          ];
        };
        "bdcs-import" = {
          depends = [
            (hsPkgs.bdcs)
            (hsPkgs.base)
            (hsPkgs.cond)
            (hsPkgs.content-store)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.network-uri)
            (hsPkgs.text)
          ];
        };
        "bdcs-inspect" = {
          depends = [
            (hsPkgs.bdcs)
            (hsPkgs.base)
            (hsPkgs.cond)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.monad-loops)
            (hsPkgs.process)
            (hsPkgs.text)
          ];
        };
        "inspect-groups" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.base)
            (hsPkgs.bdcs)
            (hsPkgs.bytestring)
            (hsPkgs.cond)
            (hsPkgs.conduit)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.persistent-sqlite)
            (hsPkgs.regex-pcre)
            (hsPkgs.text)
          ];
        };
        "inspect-ls" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.base)
            (hsPkgs.bdcs)
            (hsPkgs.bytestring)
            (hsPkgs.cond)
            (hsPkgs.conduit)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.regex-pcre)
            (hsPkgs.text)
            (hsPkgs.time)
          ];
        };
        "inspect-nevras" = {
          depends = [
            (hsPkgs.bdcs)
            (hsPkgs.base)
            (hsPkgs.cond)
            (hsPkgs.conduit)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.regex-pcre)
            (hsPkgs.text)
          ];
        };
        "bdcs-export" = {
          depends = [
            (hsPkgs.bdcs)
            (hsPkgs.base)
            (hsPkgs.cond)
            (hsPkgs.conduit)
            (hsPkgs.content-store)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.text)
          ];
        };
        "bdcs-tmpfiles" = {
          depends = [
            (hsPkgs.bdcs)
            (hsPkgs.base)
            (hsPkgs.directory)
          ];
        };
        "bdcs-depsolve" = {
          depends = [
            (hsPkgs.bdcs)
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.text)
          ];
        };
      };
      tests = {
        "test-bdcs" = {
          depends = [
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.codec-rpm)
            (hsPkgs.cond)
            (hsPkgs.conduit)
            (hsPkgs.conduit-combinators)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.esqueleto)
            (hsPkgs.filepath)
            (hsPkgs.gi-gio)
            (hsPkgs.gi-glib)
            (hsPkgs.monad-logger)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.parsec-numbers)
            (hsPkgs.persistent)
            (hsPkgs.persistent-sqlite)
            (hsPkgs.persistent-template)
            (hsPkgs.resourcet)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unix)
          ];
        };
      };
    };
  }