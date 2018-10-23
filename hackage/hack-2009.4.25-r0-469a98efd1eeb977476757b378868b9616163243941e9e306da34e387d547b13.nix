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
        version = "2009.4.25";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
      author = "Wang, Jinjing";
      homepage = "http://github.com/nfjinjing/hack/tree/master";
      url = "";
      synopsis = "a sexy Haskell Webserver Interface";
      description = "Hack: a sexy Haskell Webserver Interface.\nHack is a brain-dead port of the brilliant Ruby Rack <http://rack.rubyforge.org/> webserver interface.";
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
          (hsPkgs.bytestring)
          (hsPkgs.template)
          (hsPkgs.base64-string)
          (hsPkgs.zlib)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.mps)
          (hsPkgs.kibro)
          (hsPkgs.data-default)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.bytestring)
          (hsPkgs.template)
          (hsPkgs.unix)
          (hsPkgs.time)
        ];
      };
    };
  }