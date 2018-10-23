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
        name = "syntax-attoparsec";
        version = "0.3.0.0";
      };
      license = "MIT";
      copyright = "Paweł Nowak 2014";
      maintainer = "Paweł Nowak <pawel834@gmail.com>";
      author = "Paweł Nowak";
      homepage = "";
      url = "";
      synopsis = "Syntax instances for Attoparsec.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "syntax-attoparsec" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.syntax)
          (hsPkgs.semi-iso)
          (hsPkgs.attoparsec)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.scientific)
        ];
      };
    };
  }