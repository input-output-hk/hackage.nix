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
      specVersion = "1.2";
      identifier = {
        name = "text-xml-qq";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "oscar dot finnsson at gmail dot com";
      author = "Oscar Finnsson";
      homepage = "http://www.github.com/finnsson/text-xml-qq";
      url = "";
      synopsis = "Quasiquoter for xml. XML DSL in Haskell.";
      description = "XML quasiquoter. Can convert XML code into Haskell data structures compile time.\n\nAt the moment only Text.XML.Light (xml-package) backend.\n\nSupports namespaces, attributes, embedding Haskell variables etc.\n\nSee github for more information and examples of usage.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.xml)
          (hsPkgs.parsec)
          (hsPkgs.base)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }