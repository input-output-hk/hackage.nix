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
        version = "1.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Alex Suraci <suraci.alex@gmail.com>, Simon Michael <simon@joyful.com>";
      author = "Alex Suraci <suraci.alex@gmail.com>";
      homepage = "http://hackage.haskell.org/package/darcsden";
      url = "";
      synopsis = "Darcs repository UI and hosting/collaboration app (hub.darcs.net branch).";
      description = "A web application and SSH server for browsing and hosting darcs\nrepositories and collaborating with others.\n\nInstallation: http://hub.darcs.net/simon/darcsden/README.md\n\nRelease notes: http://hub.darcs.net/simon/darcsden/ANNOUNCE.md";
      buildType = "Simple";
    };
    components = {
      exes = {
        "darcsden" = {
          depends = (((([
            (hsPkgs.base)
            (hsPkgs.base64-string)
            (hsPkgs.blaze-builder)
            (hsPkgs.blaze-html)
            (hsPkgs.blaze-markup)
            (hsPkgs.bytestring)
            (hsPkgs.CouchDB)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.harp)
            (hsPkgs.hashed-storage)
            (hsPkgs.HsOpenSSL)
            (hsPkgs.hsp)
            (hsPkgs.http-conduit)
            (hsPkgs.json)
            (hsPkgs.mtl)
            (hsPkgs.mime-mail)
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
          ]) ++ pkgs.lib.optional (flags.highlightingkate) (hsPkgs.highlighting-kate)) ++ pkgs.lib.optional (flags.highlighter) (hsPkgs.highlighter)) ++ pkgs.lib.optional (flags.ssh) (hsPkgs.ssh)) ++ pkgs.lib.optional (system.isWindows) (hsPkgs.Win32-services-wrapper);
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
        "darcsden-test" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.CouchDB)
            (hsPkgs.HUnit)
            (hsPkgs.redis)
            (hsPkgs.text)
            (hsPkgs.webdriver)
          ];
        };
      };
    };
  }