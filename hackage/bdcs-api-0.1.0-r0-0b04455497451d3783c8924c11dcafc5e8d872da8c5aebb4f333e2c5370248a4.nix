{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "bdcs-api"; version = "0.1.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "bcl@redhat.com";
      author = "Brian C. Lane";
      homepage = "https://github.com/weldr/bdcs-api";
      url = "";
      synopsis = "BDCS API Server";
      description = "This module provides an API server and library component that works with the BDCS\nproject.  It provides a web interface for clients to create, edit, and delete\nblueprints; to list the contents of the content store; to request composes from\nexisting blueprints; and to fetch the results of composes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.bdcs)
          (hsPkgs.bifunctors)
          (hsPkgs.bytestring)
          (hsPkgs.concurrent-extra)
          (hsPkgs.cond)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.extra)
          (hsPkgs.filepath)
          (hsPkgs.gi-gio)
          (hsPkgs.gi-ggit)
          (hsPkgs.gi-glib)
          (hsPkgs.gitrev)
          (hsPkgs.haskell-gi-base)
          (hsPkgs.htoml)
          (hsPkgs.http-media)
          (hsPkgs.http-types)
          (hsPkgs.monad-logger)
          (hsPkgs.monad-loops)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.persistent)
          (hsPkgs.persistent-sqlite)
          (hsPkgs.resourcet)
          (hsPkgs.safe-exceptions)
          (hsPkgs.semver)
          (hsPkgs.servant-options)
          (hsPkgs.servant-server)
          (hsPkgs.split)
          (hsPkgs.stm)
          (hsPkgs.string-conversions)
          (hsPkgs.tar)
          (hsPkgs.temporary)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unix)
          (hsPkgs.uuid)
          (hsPkgs.wai)
          (hsPkgs.wai-cors)
          (hsPkgs.warp)
          ];
        pkgconfig = [ (pkgconfPkgs.libgit2-glib-1.0) ];
        };
      exes = {
        "bdcs-api-server" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bdcs-api)
            (hsPkgs.safe-exceptions)
            ];
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bdcs)
            (hsPkgs.bdcs-api)
            (hsPkgs.bytestring)
            (hsPkgs.cond)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hspec)
            (hsPkgs.http-client)
            (hsPkgs.monad-loops)
            (hsPkgs.safe-exceptions)
            (hsPkgs.servant-client)
            (hsPkgs.servant-server)
            (hsPkgs.string-conversions)
            (hsPkgs.string-qq)
            (hsPkgs.temporary)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.wai)
            (hsPkgs.warp)
            ];
          };
        };
      };
    }