{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "urxml"; version = "0.2.0.0"; };
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
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }