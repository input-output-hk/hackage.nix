{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "syntax-example-json"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "Paweł Nowak 2014";
      maintainer = "Paweł Nowak <pawel834@gmail.com>";
      author = "Paweł Nowak";
      homepage = "";
      url = "";
      synopsis = "Example JSON parser/pretty-printer.";
      description = "Example JSON parser/pretty-printer.\n\nSource code:\n\n* <https://github.com/Pawel834/syntax-example-json/blob/master/Main.hs Main.hs>\n\nExample input and output:\n\n* <https://github.com/Pawel834/syntax-example-json/blob/master/in.json in.json>\n* <https://github.com/Pawel834/syntax-example-json/blob/master/out.json out.json>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "syntax-example-json" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.semi-iso)
            (hsPkgs.syntax)
            (hsPkgs.syntax-attoparsec)
            (hsPkgs.syntax-printer)
            (hsPkgs.containers)
            (hsPkgs.text)
            (hsPkgs.scientific)
            (hsPkgs.lens)
            (hsPkgs.attoparsec)
            ];
          };
        };
      };
    }