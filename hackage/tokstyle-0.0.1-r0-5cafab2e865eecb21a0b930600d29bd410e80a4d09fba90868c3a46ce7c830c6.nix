{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "tokstyle";
        version = "0.0.1";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "iphydf@users.noreply.github.com";
      author = "iphydf";
      homepage = "https://toktok.github.io/tokstyle";
      url = "";
      synopsis = "TokTok C code style checker";
      description = "TokTok C code style checker";
      buildType = "Simple";
    };
    components = {
      "tokstyle" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.deepseq)
          (hsPkgs.filepath)
          (hsPkgs.language-c)
        ];
      };
      exes = {
        "check-c" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tokstyle)
          ];
        };
        "check-cimple" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tokstyle)
          ];
        };
      };
    };
  }