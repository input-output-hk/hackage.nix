{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      darcs28 = true;
      highlighting = true;
      closing = true;
      ssh = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "darcsden";
          version = "1.0";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Alex Suraci <suraci.alex@gmail.com>, Simon Michael <simon@joyful.com>";
        author = "Alex Suraci <suraci.alex@gmail.com>";
        homepage = "http://hackage.haskell.org/package/darcsden";
        url = "";
        synopsis = "Darcs repository UI and hosting/collaboration app.";
        description = "A web application and SSH server for browsing and hosting darcs\nrepositories and collaborating with others.\n\nSee the README in the source repository for installation help.";
        buildType = "Simple";
      };
      components = {
        exes = {
          darcsden = {
            depends  = (([
              hsPkgs.base
              hsPkgs.base64-string
              hsPkgs.blaze-builder
              hsPkgs.blaze-html
              hsPkgs.bytestring
              hsPkgs.CouchDB
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.harp
              hsPkgs.hashed-storage
              hsPkgs.hsp
              hsPkgs.json
              hsPkgs.mtl
              hsPkgs.old-locale
              hsPkgs.old-time
              hsPkgs.pandoc
              hsPkgs.pureMD5
              hsPkgs.process
              hsPkgs.random
              hsPkgs.redis
              hsPkgs.safe
              hsPkgs.SHA
              hsPkgs.snap-core
              hsPkgs.snap-server
              hsPkgs.system-uuid
              hsPkgs.split
              hsPkgs.text
              hsPkgs.time
              hsPkgs.utf8-string
              hsPkgs.xhtml
              hsPkgs.xml
            ] ++ [
              hsPkgs.darcs
            ]) ++ pkgs.lib.optionals _flags.highlighting [
              hsPkgs.highlighter
              hsPkgs.highlighting-kate
            ]) ++ pkgs.lib.optional _flags.ssh hsPkgs.ssh;
          };
          darcsden-ssh = {
            depends  = [
              hsPkgs.darcs
            ] ++ pkgs.lib.optional _flags.ssh hsPkgs.ssh;
          };
          darcsden-post-hook = {
            depends  = [
              hsPkgs.darcs
            ] ++ pkgs.lib.optional _flags.closing hsPkgs.pcre-light;
          };
        };
      };
    }