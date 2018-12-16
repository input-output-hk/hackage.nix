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
        name = "hsqml-morris";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2012-2013 Robin KAY";
      maintainer = "komadori@gekkou.co.uk";
      author = "Robin KAY";
      homepage = "http://www.gekkou.co.uk/";
      url = "";
      synopsis = "HsQML-based implementation of Nine Men's Morris";
      description = "HsQML-based implementation of Nine Men's Morris";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hsqml-morris" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.tagged)
            (hsPkgs.OddWord)
            (hsPkgs.hsqml)
          ];
        };
      };
    };
  }