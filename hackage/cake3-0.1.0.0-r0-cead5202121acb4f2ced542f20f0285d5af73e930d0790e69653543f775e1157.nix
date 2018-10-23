{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "cake3";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "grrwlf@gmail.com";
      author = "Sergey Mironov";
      homepage = "";
      url = "";
      synopsis = "Third cake - Makefile DSL";
      description = "Thirdcake is a Makefile DSL written in Haskell. Write your build logic in\nHaskell, obtain clean and safe Makefile, distribute it to the end-users.\nGNU Make is required.";
      buildType = "Simple";
    };
    components = {
      "cake3" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.template-haskell)
          (hsPkgs.QuasiText)
          (hsPkgs.filepath)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.monadloc)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.system-filepath)
          (hsPkgs.text-format)
          (hsPkgs.directory)
        ];
      };
      exes = {
        "cake3" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.process)
          ];
        };
      };
    };
  }