{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "printf-mauke";
        version = "0.5.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<l.mai@web.de>";
      author = "Lukas Mai";
      homepage = "";
      url = "";
      synopsis = "A Perl printf like formatter.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "printf-mauke" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.utf8-string)
          (hsPkgs.data-default)
          (hsPkgs.bytestring)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }