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
        name = "homplexity";
        version = "0.4.4.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright by Michal J. Gajda '2015-'2018";
      maintainer = "mjgajda@gmail.com";
      author = "Michal J. Gajda";
      homepage = "https://github.com/mgajda/homplexity";
      url = "";
      synopsis = "Haskell code quality tool";
      description = "Homplexity aims to measure code complexity,\nwarning about fragments that might have higher defect probability\ndue to bad coding style on-the-large:\n\n* too large functions\n\n* too deeply nested conditions\n\n* too few comments";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.hflags)
          (hsPkgs.uniplate)
          (hsPkgs.deepseq)
          (hsPkgs.containers)
          (hsPkgs.template-haskell)
          (hsPkgs.cpphs)
        ];
        build-tools = [
          (hsPkgs.buildPackages.happy)
        ];
      };
      exes = {
        "homplexity-cli" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hflags)
            (hsPkgs.uniplate)
            (hsPkgs.deepseq)
            (hsPkgs.containers)
            (hsPkgs.template-haskell)
            (hsPkgs.cpphs)
            (hsPkgs.homplexity)
          ];
        };
      };
      tests = {
        "Comments" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.uniplate)
          ];
        };
      };
    };
  }