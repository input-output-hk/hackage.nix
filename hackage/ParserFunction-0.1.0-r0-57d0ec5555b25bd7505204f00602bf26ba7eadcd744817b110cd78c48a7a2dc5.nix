{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.16.0";
      identifier = {
        name = "ParserFunction";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014, Enzo Haussecker. All rights reserved.";
      maintainer = "Enzo Haussecker <enzo@ucsd.edu>";
      author = "Enzo Haussecker <enzo@ucsd.edu>";
      homepage = "";
      url = "";
      synopsis = "Parse and evaluate mathematical expressions.";
      description = "Parse and evaluate mathematical expressions.";
      buildType = "Simple";
    };
    components = {
      "ParserFunction" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.parsec)
        ];
      };
    };
  }