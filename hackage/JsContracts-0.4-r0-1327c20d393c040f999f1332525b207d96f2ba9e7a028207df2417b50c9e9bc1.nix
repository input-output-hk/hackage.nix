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
      specVersion = "1.2.3";
      identifier = {
        name = "JsContracts";
        version = "0.4";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2008-2009 Arjun Guha and Spiridon Eliopoulos";
      maintainer = "Arjun Guha <arjun@cs.brown.edu>";
      author = "Arjun Guha and Spiridon Eliopoulos";
      homepage = "http://www.cs.brown.edu/research/plt/";
      url = "";
      synopsis = "Design-by-contract for JavaScript";
      description = "";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.pretty)
          (hsPkgs.containers)
          (hsPkgs.syb)
          (hsPkgs.WebBits)
          (hsPkgs.filepath)
          (hsPkgs.directory)
        ];
      };
      exes = {
        "jscc" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.pretty)
            (hsPkgs.containers)
            (hsPkgs.syb)
            (hsPkgs.WebBits)
          ];
        };
      };
    };
  }