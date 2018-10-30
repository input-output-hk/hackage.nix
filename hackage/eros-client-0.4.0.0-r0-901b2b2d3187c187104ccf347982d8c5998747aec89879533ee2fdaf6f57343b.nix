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
        name = "eros-client";
        version = "0.4.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2014, Peter Harpending.";
      maintainer = "Peter Harpending <pharpend2@gmail.com>";
      author = "Peter Harpending";
      homepage = "";
      url = "";
      synopsis = "A command-line interface to the eros library.";
      description = "This is a command-line interface to the\n<https://github.com/pharpend/eros eros library>.\nIt is terrible at the moment, and will be deprecated before version 0.5.0.0,\nso it isn't a huge priority.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "erosc" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.eros)
            (hsPkgs.text)
          ];
        };
      };
    };
  }