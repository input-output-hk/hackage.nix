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
      specVersion = "1.6";
      identifier = {
        name = "PCLT-DB";
        version = "0.1";
      };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) 2009 Andrejs Sisojevs";
      maintainer = "Andrejs Sisojevs <andrejs.sisojevs@nextmail.ru>";
      author = "Andrejs Sisojevs <andrejs.sisojevs@nextmail.ru>";
      homepage = "http://github.com/Andrey-Sisoyev/PCLT-DB";
      url = "";
      synopsis = "An addon to PCLT package: enchance PCLT catalog with PostgreSQL powers.";
      description = "\\\"PCLT\\\" is an abbreviation for \\\"Parametric Composable Localizable\nTemplates\\\" - in fact it should also hold Detalizable.\nTerm \\\"Detailizable content (message)\\\" in this package\nhas a following meaning: some content, representing which\nit is possible to regulate, in how much details it is represented.\n\nConceptually, this package is a powerful extension to the well known\nShow class, that (extension) is thought to be embeded in any\nHaskell program, which requires multilanguage support, and/or where\nmessages should be detailizable.\n\nFor more information about PCLT, read in it's description in it's own\nCabal file.\n\n_________\n\nBy the base package (PCLT) the templates are provided to be stored\nstatically in module declarations using\n'Text.PCLT.HasStaticRawPCLTs.HasStaticRawPCLTs' class instaniations.\n\nThe PCST-DB package adds a possibility to store templates in DB\n(under PostgreSQL v8.4. (not less)).\n\nThe following units are storable in DB:\n\n* localizable templates\n\n* localized templates\n\n* languages\n\n* collections of localizable templates\n\n* collections (of localizable templates) compositions\n\n* catalogs\n\n* configurations of PCLT catalogs\n\n* localizable templates detalization policies\n\nFor each catalog in DB there is stored a special flag \\\"catalog data\nor config changed\\\". The flag gets raised by an army of triggers,\nthat watches every table, and is thought to get dropped by a program,\nwhich uses DB catalog. Drop the flag right before catalog update\nfrom DB.\n\nUnfortunately, the current implementation of this flagging system\nconstraints the number of agents that update their catalogs from DB\nby only one (because, when agent updates it's catalog, it drops\nthe flag, and other agents don't know that flag was risen, so they\ncan't know if version of catalog in their operative memory is older\nthen in DB or not).\n\nBut this limitation removal is planned as a first ToDo in the next\nversion of PCLT-DB.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.convertible)
          (hsPkgs.mtl)
          (hsPkgs.HDBC)
          (hsPkgs.HDBC-postgresql)
          (hsPkgs.PCLT)
        ];
      };
    };
  }