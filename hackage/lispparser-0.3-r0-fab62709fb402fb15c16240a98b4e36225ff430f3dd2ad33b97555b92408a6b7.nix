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
        name = "lispparser";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Jonathan Tang 2008";
      maintainer = "eric.kow@gmail.com";
      author = "Jonathan Tang";
      homepage = "";
      url = "";
      synopsis = "Simple parser for LISP S-expressions";
      description = "\nA simple parser for LISP S-expressions, using Parsec.\n\nThis comes from Jonathan Tang's tutorial,\n/Write Yourself a Scheme in 48 Hours/.\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.parsec)
        ];
      };
    };
  }