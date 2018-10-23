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
        name = "syntax-example";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "Paweł Nowak 2014";
      maintainer = "Paweł Nowak <pawel834@gmail.com>";
      author = "Paweł Nowak";
      homepage = "";
      url = "";
      synopsis = "Example application using syntax, a library for abstract syntax descriptions.";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "syntax-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.lens)
            (hsPkgs.semi-iso)
            (hsPkgs.syntax)
            (hsPkgs.syntax-attoparsec)
            (hsPkgs.syntax-pretty)
            (hsPkgs.attoparsec)
            (hsPkgs.pretty)
            (hsPkgs.text)
          ];
        };
      };
    };
  }