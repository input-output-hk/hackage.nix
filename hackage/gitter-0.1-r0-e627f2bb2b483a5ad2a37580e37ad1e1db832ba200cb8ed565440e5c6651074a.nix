{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "gitter";
        version = "0.1";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Yuriy Syrovetskiy <cblp@cblp.su>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Gitter.im API client";
      description = "Gitter.im is a programmers-oriented GitHub-based web-chat.\nThis package provides a (partial) implementation of its API.";
      buildType = "Simple";
    };
    components = {
      "gitter" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.exceptions)
          (hsPkgs.lens)
          (hsPkgs.lens-aeson)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.wreq)
        ];
      };
    };
  }