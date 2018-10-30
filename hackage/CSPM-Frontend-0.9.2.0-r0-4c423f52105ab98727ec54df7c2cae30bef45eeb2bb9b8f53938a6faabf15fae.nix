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
      specVersion = "1.14";
      identifier = {
        name = "CSPM-Frontend";
        version = "0.9.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Marc Fontaine <Marc.Fontaine@gmx.de>, Ivaylo Dobrikov <dobrikov84@yahoo.com>";
      author = "Marc Fontaine 2007 - 2013";
      homepage = "";
      url = "";
      synopsis = "A CSP-M parser compatible with FDR-2.91";
      description = "CSP-M is the machine readable syntax of CSP (concurrent sequential processes) as used by\nthe formal methods tools FDR, Probe and ProB.\nThis Package contains functions for lexing, parsing, renaming and pretty-printing\nCSP-M specifications.\nThe parser is (almost) 100% compatible with the FDR-2.91 parser.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.parsec2)
          (hsPkgs.prettyclass)
          (hsPkgs.mtl)
          (hsPkgs.either)
          (hsPkgs.transformers)
          (hsPkgs.dlist)
          (hsPkgs.syb)
          (hsPkgs.ghc-prim)
          (hsPkgs.filepath)
        ];
      };
    };
  }