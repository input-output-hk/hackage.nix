{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { happstack = false; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "gitit";
        version = "0.5.2";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane";
      homepage = "http://github.com/jgm/gitit/tree/master";
      url = "";
      synopsis = "Wiki using HAppS, git or darcs, and pandoc.";
      description = "Gitit is a wiki program. Pages and uploaded files\nare stored in a git or darcs repository and may be modified\neither by using the VCS's command-line tools or through\nthe wiki's web interface. Pandoc's extended version\nof markdown is used as a markup language. Pages\ncan be exported in a number of different formats,\nincluding LaTeX, RTF, OpenOffice ODT, and MediaWiki\nmarkup. Gitit can be configured to display TeX math\n(using jsMath) and highlighted source code (using\nhighlighting-kate).";
      buildType = "Simple";
    };
    components = {
      exes = {
        "gitit" = {
          depends  = ([
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.pretty)
            (hsPkgs.xhtml)
            (hsPkgs.containers)
            (hsPkgs.pandoc)
            (hsPkgs.process)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.cgi)
            (hsPkgs.network)
            (hsPkgs.old-time)
            (hsPkgs.highlighting-kate)
            (hsPkgs.bytestring)
            (hsPkgs.utf8-string)
            (hsPkgs.SHA)
            (hsPkgs.HTTP)
            (hsPkgs.HStringTemplate)
            (hsPkgs.random)
            (hsPkgs.network)
            (hsPkgs.recaptcha)
            (hsPkgs.filestore)
            (hsPkgs.datetime)
            (hsPkgs.zlib)
          ] ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.ge "6.10") [
            (hsPkgs.base)
            (hsPkgs.syb)
          ]) ++ (if flags.happstack
            then [
              (hsPkgs.happstack-server)
            ]
            else [ (hsPkgs.HAppS-Server) ]);
        };
      };
    };
  }