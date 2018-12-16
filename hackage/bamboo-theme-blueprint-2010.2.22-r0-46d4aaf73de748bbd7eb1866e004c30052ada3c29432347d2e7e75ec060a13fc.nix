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
        name = "bamboo-theme-blueprint";
        version = "2010.2.22";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
      author = "Wang, Jinjing";
      homepage = "http://github.com/nfjinjing/bamboo/tree/master";
      url = "";
      synopsis = "bamboo blueprint theme";
      description = "bamboo blueprint theme";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.cgi)
          (hsPkgs.network)
          (hsPkgs.mtl)
          (hsPkgs.haskell98)
          (hsPkgs.old-locale)
          (hsPkgs.old-time)
          (hsPkgs.time)
          (hsPkgs.unix)
          (hsPkgs.bytestring)
          (hsPkgs.base64-string)
          (hsPkgs.zlib)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.containers)
          (hsPkgs.process)
          (hsPkgs.parsedate)
          (hsPkgs.rss)
          (hsPkgs.xhtml)
          (hsPkgs.utf8-string)
          (hsPkgs.parsec)
          (hsPkgs.gravatar)
          (hsPkgs.data-default)
          (hsPkgs.mps)
          (hsPkgs.hcheat)
          (hsPkgs.hack)
          (hsPkgs.hack-contrib)
          (hsPkgs.bamboo)
        ];
      };
    };
  }