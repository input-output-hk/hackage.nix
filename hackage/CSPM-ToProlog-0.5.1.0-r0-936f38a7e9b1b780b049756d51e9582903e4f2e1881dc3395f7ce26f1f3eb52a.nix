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
      specVersion = "1.10";
      identifier = {
        name = "CSPM-ToProlog";
        version = "0.5.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Marc Fontaine <Marc.Fontaine@gmx.de>";
      author = "2006-2013 Marc Fontaine";
      homepage = "";
      url = "";
      synopsis = "some modules specific for the ProB tool";
      description = "This package contains a translation from a CSPM AST to the representation\nused by the ProB tool.\nThis code is only interesting for ProB developers.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.CSPM-Frontend)
          (hsPkgs.pretty)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.ghc-prim)
        ];
      };
    };
  }