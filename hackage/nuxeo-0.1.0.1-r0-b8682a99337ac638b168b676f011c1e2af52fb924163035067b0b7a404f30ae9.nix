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
        name = "nuxeo";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "alex@xn--wxa.email";
      author = "Alexandre Peyroux";
      homepage = "";
      url = "";
      synopsis = "Nuxeo";
      description = "Nuxeo";
      buildType = "Simple";
    };
    components = {
      "nuxeo" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.text)
          (hsPkgs.time)
        ];
      };
    };
  }