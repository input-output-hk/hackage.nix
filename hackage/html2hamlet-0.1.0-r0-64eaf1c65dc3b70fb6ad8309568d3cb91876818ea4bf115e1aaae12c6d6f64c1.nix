{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "html2hamlet";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tanaka.hideyuki@gmail.com";
      author = "Hideyuki Tanaka";
      homepage = "http://github.com/tanakh/html2hamlet";
      url = "";
      synopsis = "HTML to Hamlet converter";
      description = "HTML to Hamlet converter";
      buildType = "Simple";
    };
    components = {
      exes = {
        "html2hamlet" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.ascii)
            (hsPkgs.blaze-builder)
            (hsPkgs.hamlet)
            (hsPkgs.xmlhtml)
            (hsPkgs.cmdargs)
            (hsPkgs.http-enumerator)
            (hsPkgs.network)
          ];
        };
      };
    };
  }