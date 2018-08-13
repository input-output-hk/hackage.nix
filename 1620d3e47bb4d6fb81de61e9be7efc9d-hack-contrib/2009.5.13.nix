{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "hack-contrib";
        version = "2009.5.13";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
      author = "Wang, Jinjing";
      homepage = "http://github.com/nfjinjing/hack/tree/master";
      url = "";
      synopsis = "Hack contrib";
      description = "Hack contrib";
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
          (hsPkgs.unix)
          (hsPkgs.time)
          (hsPkgs.pureMD5)
          (hsPkgs.mps)
          (hsPkgs.hack)
        ];
      };
    };
  }