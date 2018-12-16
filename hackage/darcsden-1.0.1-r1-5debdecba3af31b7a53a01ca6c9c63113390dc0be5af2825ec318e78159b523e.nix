{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      darcs28 = true;
      highlightingkate = true;
      highlighter = false;
      closing = true;
      ssh = true;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "darcsden";
        version = "1.0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Alex Suraci <suraci.alex@gmail.com>, Simon Michael <simon@joyful.com>";
      author = "Alex Suraci <suraci.alex@gmail.com>";
      homepage = "http://hackage.haskell.org/package/darcsden";
      url = "";
      synopsis = "Darcs repository UI and hosting/collaboration app.";
      description = "A web application and SSH server for browsing and hosting darcs\nrepositories and collaborating with others.\n\nInstallation: http://hub.darcs.net/simon/darcsden-1.0/README\n\n1.0 release notes: http://hub.darcs.net/simon/darcsden-1.0/ANNOUNCE.md\n\n1.0.1 changes:\n\n* cabal file now includes the required highlightingkate/highlighter build flags\n\n* cabal file points to a darcsden 1.0 source repo";
      buildType = "Simple";
    };
    components = {
      exes = {
        "darcsden" = {
          depends = ((([
            (hsPkgs.base)
            (hsPkgs.base64-string)
            (hsPkgs.blaze-builder)
            (hsPkgs.blaze-html)
            (hsPkgs.bytestring)
            (hsPkgs.CouchDB)
            (hsPkgs.containers)
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
            (hsPkgs.pureMD5)
            (hsPkgs.process)
            (hsPkgs.random)
            (hsPkgs.redis)
            (hsPkgs.safe)
            (hsPkgs.SHA)
            (hsPkgs.snap-core)
            (hsPkgs.snap-server)
            (hsPkgs.system-uuid)
            (hsPkgs.split)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.utf8-string)
            (hsPkgs.xhtml)
            (hsPkgs.xml)
          ] ++ [
            (hsPkgs.darcs)
          ]) ++ pkgs.lib.optional (flags.highlightingkate) (hsPkgs.highlighting-kate)) ++ pkgs.lib.optional (flags.highlighter) (hsPkgs.highlighter)) ++ pkgs.lib.optional (flags.ssh) (hsPkgs.ssh);
        };
        "darcsden-ssh" = {
          depends = [
            (hsPkgs.darcs)
          ] ++ pkgs.lib.optional (flags.ssh) (hsPkgs.ssh);
        };
        "darcsden-post-hook" = {
          depends = [
            (hsPkgs.darcs)
          ] ++ pkgs.lib.optional (flags.closing) (hsPkgs.pcre-light);
        };
      };
    };
  }