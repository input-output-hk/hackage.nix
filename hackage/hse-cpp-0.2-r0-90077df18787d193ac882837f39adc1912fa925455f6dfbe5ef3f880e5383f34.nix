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
        name = "hse-cpp";
        version = "0.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Roman Cheplyaka <roma@ro-che.info>";
      author = "Roman Cheplyaka";
      homepage = "";
      url = "";
      synopsis = "Preprocess+parse haskell code";
      description = "";
      buildType = "Simple";
    };
    components = {
      "hse-cpp" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.cpphs)
          (hsPkgs.haskell-src-exts)
        ];
      };
    };
  }