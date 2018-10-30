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
        name = "hgdbmi";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 Alexander Bernauer <acopton@gmail.com>, 2008 Evan Martin <martine@danga.com>";
      maintainer = "Alexander Bernauer <acopton@gmail.com>";
      author = "Alexander Bernauer, Evan Martin";
      homepage = "https://github.com/copton/hgdbmi";
      url = "";
      synopsis = "GDB Machine Interface: program-driven control of GDB";
      description = "GDB\\/MI lets programs drive GDB. It can be used, for example, by GDB\nfrontends. See section 27 of the GDB manual\n\nThis module encapsualtes a GDB subprocess and provides an API to send\ncommands as well as receive both responses and notifications.\n\nThe actual GDB behavior diverges from the GDB manual in many points, so the\nimplementation of the Machine Interface highly depends on the GDB version.\nThis module is tested with GDB version 7.4.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.process)
          (hsPkgs.unix)
          (hsPkgs.stm)
        ];
      };
      tests = {
        "pure" = {
          depends  = [
            (hsPkgs.hgdbmi)
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.template-haskell)
          ];
        };
        "io" = {
          depends  = [
            (hsPkgs.hgdbmi)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.temporary)
            (hsPkgs.template-haskell)
          ];
        };
      };
    };
  }