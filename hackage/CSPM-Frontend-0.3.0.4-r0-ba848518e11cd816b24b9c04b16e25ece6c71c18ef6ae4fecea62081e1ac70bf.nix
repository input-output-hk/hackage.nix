{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { testing = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "CSPM-Frontend";
        version = "0.3.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Marc Fontaine <fontaine@cs.uni-duesseldorf.de>";
      author = "Marc Fontaine";
      homepage = "http://www.stups.uni-duesseldorf.de/~fontaine/csp";
      url = "";
      synopsis = "A CSP-M parser compatible with FDR-2.83";
      description = "CSP-M is the machine readable syntax of CSP (concurrent sequential processes) as used by\nthe formal methods tools FDR, Prob and ProB.\nThis Package contains functions for lexing, parsing, renaming and pretty-printing\nCSP-M specifications.\nThe parser is (almost) 100% compatible with the FDR-2.83 parser.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.parsec)
          (hsPkgs.old-time)
          (hsPkgs.template-haskell)
          (hsPkgs.pretty)
          (hsPkgs.mtl)
          (hsPkgs.haskell98)
          (hsPkgs.syb)
        ];
      };
    };
  }