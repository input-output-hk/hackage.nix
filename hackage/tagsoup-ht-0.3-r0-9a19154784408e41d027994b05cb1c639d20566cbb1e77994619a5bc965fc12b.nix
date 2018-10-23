{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "tagsoup-ht";
        version = "0.3";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <tagsoup@henning-thielemann.de>";
      author = "Henning Thielemann <tagsoup@henning-thielemann.de>";
      homepage = "http://code.haskell.org/~thielema/tagsoup-ht/";
      url = "";
      synopsis = "alternative parser for the tagsoup package";
      description = "TagSoup is a package for parsing and extracting information from (possibly malformed) HTML/XHTML documents.\nHere I present my own parser,\nwhich I find (of course) more comprehensible and easier to extend.\nIt also handles XML declarations and CDATA sections correctly.\nThis package is abandoned and will be renamed to Tagchup.";
      buildType = "Simple";
    };
    components = {
      "tagsoup-ht" = {
        depends  = [
          (hsPkgs.xml-basic)
          (hsPkgs.transformers)
          (hsPkgs.explicit-exception)
          (hsPkgs.tagsoup)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-accessor)
          (hsPkgs.utility-ht)
          (hsPkgs.base)
        ];
      };
      exes = {
        "tagsouptest" = {
          depends  = [
            (hsPkgs.xml-basic)
            (hsPkgs.transformers)
            (hsPkgs.explicit-exception)
            (hsPkgs.tagsoup)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.data-accessor)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
          ];
        };
        "tagsoupspeed" = {
          depends  = [
            (hsPkgs.xml-basic)
            (hsPkgs.transformers)
            (hsPkgs.explicit-exception)
            (hsPkgs.tagsoup)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.data-accessor)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
            (hsPkgs.old-time)
          ];
        };
        "validate-tagsoup" = {
          depends  = [
            (hsPkgs.xml-basic)
            (hsPkgs.transformers)
            (hsPkgs.explicit-exception)
            (hsPkgs.tagsoup)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.data-accessor)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
          ];
        };
      };
    };
  }