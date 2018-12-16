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
      specVersion = "1.10";
      identifier = {
        name = "nuxeo";
        version = "0.3.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "alex@xn--wxa.email";
      author = "Alexandre Peyroux";
      homepage = "https://github.com/apeyroux/nuxeo#readme";
      url = "";
      synopsis = "";
      description = "Nuxeo tools";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.text)
          (hsPkgs.time)
        ];
      };
      exes = {
        "nuxeo" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.nuxeo)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
          ];
        };
      };
    };
  }