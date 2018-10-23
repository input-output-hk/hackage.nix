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
        name = "hack-contrib";
        version = "2009.8.16";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
      author = "Wang, Jinjing";
      homepage = "http://github.com/nfjinjing/hack-contrib/tree/master";
      url = "";
      synopsis = "Hack contrib";
      description = "Common middlewares and utilities that helps working with Hack";
      buildType = "Simple";
    };
    components = {
      "hack-contrib" = {
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
          (hsPkgs.bytestring)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.data-default)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.time)
          (hsPkgs.pureMD5)
          (hsPkgs.mps)
          (hsPkgs.hack)
        ];
      };
    };
  }