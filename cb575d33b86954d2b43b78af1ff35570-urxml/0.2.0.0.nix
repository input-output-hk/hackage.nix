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
      specVersion = "1.8";
      identifier = {
        name = "urxml";
        version = "0.2.0.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "grrwlf@gmail.com";
      author = "Sergey Mironov";
      homepage = "http://github.com/grwlf/urxml";
      url = "";
      synopsis = "XML parser-printer supporting Ur/Web syntax extensions";
      description = "UrXML is yet another XML parser/pretty-printer based on\n[RSXP](http://hackage.haskell.org/package/really-simple-xml-parser) package by\nCK Kashyap.\nUrXML is vim-friendly and can be used to pretty-print the XML-fragment of\nnon-XML file.\nAdditionaly, the tool is able to translate the usual XML into\n[Ur/Web](http://www.impredicative.com/ur/) dialect of XML (uses several\nhardcoded rules)";
      buildType = "Simple";
    };
    components = {
      exes = {
        "urxml" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.syb)
            (hsPkgs.filepath)
            (hsPkgs.process)
          ];
        };
      };
    };
  }