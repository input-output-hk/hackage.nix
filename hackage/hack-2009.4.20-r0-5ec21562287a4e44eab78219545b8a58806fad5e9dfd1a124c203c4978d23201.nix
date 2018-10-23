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
        name = "hack";
        version = "2009.4.20";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
      author = "Wang, Jinjing";
      homepage = "http://www.haskell.org/haskellwiki/Panda";
      url = "";
      synopsis = "a sexy Haskell Webserver Interface";
      description = "a sexy Haskell Webserver Interface";
      buildType = "Simple";
    };
    components = {
      "hack" = {
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
          (hsPkgs.mps)
          (hsPkgs.kibro)
          (hsPkgs.data-default)
        ];
      };
    };
  }