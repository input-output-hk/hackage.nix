{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "brillig";
        version = "0.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "eric.kow@gmail.com";
      author = "Eric Kow";
      homepage = "";
      url = "";
      synopsis = "Simple part of speech tagger";
      description = "This is almost a Brill tagger implementation.\nAmong other things, it needs to be generalised\nto look back beyond one tag.";
      buildType = "Simple";
    };
    components = {
      "brillig" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.text)
          (hsPkgs.ListZipper)
        ];
      };
      exes = {
        "brillig" = {
          depends  = [
            (hsPkgs.brillig)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.text)
          ];
        };
      };
    };
  }