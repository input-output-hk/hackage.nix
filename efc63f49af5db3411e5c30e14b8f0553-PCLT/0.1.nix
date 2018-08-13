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
      specVersion = "1.6";
      identifier = {
        name = "PCLT";
        version = "0.1";
      };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) 2009 Andrejs Sisojevs";
      maintainer = "Andrejs Sisojevs <andrejs.sisojevs@nextmail.ru>";
      author = "Andrejs Sisojevs <andrejs.sisojevs@nextmail.ru>";
      homepage = "http://github.com/Andrey-Sisoyev/PCLT";
      url = "";
      synopsis = "Extension to Show: templating, catalogizing, languages, parameters, etc.";
      description = "\\\"PCLT\\\" is an abbreviation for \\\"Parametric Composable Localizable\nTemplates\\\" - in fact it should also hold Detalizable.\nTerm \\\"Detailizable content (message)\\\" in this package\nhas a following meaning: some content, representing which\nit is possible to regulate, in how much details it is represented.\n\nConceptually, this package is a powerful extension to the well known\nShow class, that (extension) is thought to be embeded in any\nHaskell program, which requires multilanguage support, and/or where\nmessages should be detailizable.\n\nThe PCLT catalog consists of:\n\n* Catalog ID\n\n* Config, which defines rules and constraints,\nthat are used when catalog gets formed, and when it is used\nto generate messages.\n\n* Tempates of messages, possibly related. Each catalog entry\nis referenced by an ID, and is called \\\"localizable (in languages)\ntemplate\\\", while it's localization in concrete language is called\n\\\"localized (in a languages) template\\\".\n\nEach catalog entry (localizable template) consists of\n\n* ID\n\n* A requirement to detailization level (to used by reciever of\nrepresentation), which if is not statisfied, the template\nisn't used.\n\n* A map of localized templates by languages - the different\ntranslations of one same message.\n\nEach localized template is a sequence of chunks:\n\n* plain texts,\n\n* named parameters placeholders,\n\n* placeholders for insertion of other template (reference on\nother template, also called composites).\n\nTo make a message one needs to specify\n\n* a catalog,\n\n* a language,\n\n* detailization level to orient on\n\n* a localizable template ID,\n\n* a map of parameters together with their values.\n\nThe last two fields (localizable template ID + a map of parameters\ntogether with their values) is called instaniation (of\ntemplated message). In the program it wrapped in a PCSI data type.\n\nA parameter value may be\n\n* plain text\n\n* newline\n\n* nothing\n\n* a reference to other instaniation (localizable template ID +\na map of parameters together with their values)\n\n* a list of other other instaniation\n\n* a parameter wrapping, where wrapper is an indentation of text\n(N whitespaces insertion after each newline character)\n\n* a list of parameter values.\n\nThis package comes together with another one - a dependent package\nPCLT-DB (section Database), which provides\n\n* a (PostgreSQL 8.4) DB structure where to keep/manage data\nused for PCLT catalogs formation,\n\n* simple interface to read this data in haskell program, and\n\n* a prototype of a longterm service which regularly updates\ncatalog MVar with data from DB.\n\nIMPORTANT!!! : It is highly recommended to use /ISO 639(3)/ standard\nfor language names, since PCLT-DB package is oriented on 3 letters\n(not bigger) language names. Without modifications PCLT-DB won't\nwork for bigger (then 3-letters) names.\n\nToDo considerations for the next versions:\n\n(0) Consider using state monad in order to put catalog into\nan implicit context... and maybe also other uses if monads.\n\n(1) Rewrite MakeCatalog, so that it uses CatalogMaths functions.\nOtherwise the both modules do similar work, and keeping double\ncode is a bad style.\n\n(2) Introduction of a new parameter value type: \\\"reparsable\\\"\nwrapping for parameter value.\n\n(3) CatalogMaths extension.\n\n(4) Enchance required SDLs with min & max functions.\n\n(5) Sacrificing ldtSubcompositesMap of LocalizedTemplate,\nwhich initially was introduced to enchance speed of messages\ngeneration, in favor of making catalogs easier to modify\n(which curently isn't supported and isn't an easy task).";
      buildType = "Simple";
    };
    components = {
      "PCLT" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.utf8-string)
        ];
      };
    };
  }