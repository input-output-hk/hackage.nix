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
      specVersion = "1.2";
      identifier = {
        name = "fixpoint";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2007 Roman Leshchinskiy";
      maintainer = "Roman Leshchinskiy <rl@cse.unsw.edu.au>";
      author = "Roman Leshchinskiy <rl@cse.unsw.edu.au>";
      homepage = "http://www.cse.unsw.edu.au/~rl/code/fixpoint.html";
      url = "";
      synopsis = "Data types as fixpoints";
      description = "This package allows data types to be seen and manipulated as fixpoints of\ntheir underlying functors. It is mostly based on \"Functional Programming with\nBananas, Lenses, Envelopes and Barbed Wire\" by Erik Meijer, Maarten Fokkinga\nand Ross Paterson (<http://citeseer.ist.psu.edu/meijer91functional.html>). It\nmakes essential use of associated types and related extensions.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }