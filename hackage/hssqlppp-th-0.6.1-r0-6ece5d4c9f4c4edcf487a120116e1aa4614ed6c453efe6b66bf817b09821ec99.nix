{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hssqlppp-th"; version = "0.6.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2009-2014 Jake Wheat";
      maintainer = "jakewheatmail@gmail.com";
      author = "Jake Wheat";
      homepage = "http://jakewheat.github.com/hssqlppp/";
      url = "";
      synopsis = "hssqlppp extras which need template-haskell";
      description = "hssqlppp extras which need template-haskell\n\nDocumentation, examples on the homepage:\n<http://jakewheat.github.com/hssqlppp/>.\n\nChanges here: <https://github.com/JakeWheat/hssqlppp/blob/master/CHANGES>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.hssqlppp)
          (hsPkgs.syb)
          (hsPkgs.text)
          ];
        };
      tests = {
        "TestsTh" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.syb)
            (hsPkgs.template-haskell)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
            (hsPkgs.hssqlppp)
            ];
          };
        };
      };
    }