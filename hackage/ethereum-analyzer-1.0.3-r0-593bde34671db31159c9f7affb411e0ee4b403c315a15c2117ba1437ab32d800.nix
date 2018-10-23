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
        name = "ethereum-analyzer";
        version = "1.0.3";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "k_@berkeley.edu";
      author = "Kevin Chen";
      homepage = "https://github.com/ethereumK/ethereum-analyzer";
      url = "";
      synopsis = "A Ethereum contract analyzer.";
      description = "A Ethereum contract analyzer.";
      buildType = "Simple";
    };
    components = {
      "ethereum-analyzer" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bimap)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.ethereum-analyzer-deps)
          (hsPkgs.extra)
          (hsPkgs.fgl)
          (hsPkgs.graphviz)
          (hsPkgs.hexstring)
          (hsPkgs.hoopl)
          (hsPkgs.text)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.ethereum-analyzer)
            (hsPkgs.ethereum-analyzer-deps)
            (hsPkgs.extra)
            (hsPkgs.hoopl)
            (hsPkgs.hspec)
            (hsPkgs.text)
          ];
        };
      };
    };
  }