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
      specVersion = "1.2";
      identifier = {
        name = "bamboo";
        version = "2009.4.52";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
      author = "Wang, Jinjing";
      homepage = "http://github.com/nfjinjing/bamboo/tree/master";
      url = "";
      synopsis = "A simple blog middleware on hack";
      description = "A simple blog middleware on hack";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.cgi)
          (hsPkgs.network)
          (hsPkgs.haskell98)
          (hsPkgs.old-locale)
          (hsPkgs.old-time)
          (hsPkgs.time)
          (hsPkgs.unix)
          (hsPkgs.bytestring)
          (hsPkgs.template)
          (hsPkgs.base64-string)
          (hsPkgs.zlib)
          (hsPkgs.directory)
          (hsPkgs.ansi-wl-pprint)
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
          (hsPkgs.hack-contrib)
        ];
      };
    };
  }