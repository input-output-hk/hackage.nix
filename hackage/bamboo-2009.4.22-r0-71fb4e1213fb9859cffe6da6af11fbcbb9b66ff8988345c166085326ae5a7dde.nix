{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "bamboo";
        version = "2009.4.22";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
      author = "Wang, Jinjing";
      homepage = "http://www.haskell.org/haskellwiki/Bamboo";
      url = "";
      synopsis = "A simple blog engine on Hack";
      description = "A simple blog engine on Hack";
      buildType = "Simple";
    };
    components = {
      "bamboo" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.cgi)
          (hsPkgs.network)
          (hsPkgs.haskell98)
          (hsPkgs.old-locale)
          (hsPkgs.old-time)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.containers)
          (hsPkgs.process)
          (hsPkgs.mps)
          (hsPkgs.parsedate)
          (hsPkgs.rss)
          (hsPkgs.xhtml)
          (hsPkgs.kibro)
          (hsPkgs.utf8-string)
          (hsPkgs.pandoc)
          (hsPkgs.parsec)
          (hsPkgs.MissingH)
          (hsPkgs.gravatar)
          (hsPkgs.data-default)
          (hsPkgs.hcheat)
          (hsPkgs.hack)
        ];
      };
    };
  }