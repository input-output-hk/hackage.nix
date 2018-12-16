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
      specVersion = "0";
      identifier = {
        name = "HAppS-Server";
        version = "0.9.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "AlexJacobson@HAppS.org";
      author = "HAppS LLC";
      homepage = "";
      url = "";
      synopsis = "Web related tools and services.";
      description = "Web framework";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.HaXml)
          (hsPkgs.parsec)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.regex-compat)
          (hsPkgs.hslogger)
          (hsPkgs.HAppS-Data)
          (hsPkgs.HAppS-Util)
          (hsPkgs.HAppS-State)
          (hsPkgs.HAppS-IxSet)
          (hsPkgs.HTTP)
          (hsPkgs.template-haskell)
          (hsPkgs.xhtml)
          (hsPkgs.html)
          (hsPkgs.bytestring)
          (hsPkgs.random)
          (hsPkgs.containers)
          (hsPkgs.old-time)
          (hsPkgs.old-locale)
          (hsPkgs.directory)
          (hsPkgs.unix)
        ];
      };
    };
  }