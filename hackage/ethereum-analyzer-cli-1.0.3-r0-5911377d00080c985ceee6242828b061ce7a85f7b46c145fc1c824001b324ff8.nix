{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ethereum-analyzer-cli"; version = "1.0.3"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "k_@berkeley.edu";
      author = "Kevin Chen";
      homepage = "https://github.com/ethereumK/ethereum-analyzer";
      url = "";
      synopsis = "A CLI frontend for ethereum-analyzer.";
      description = "A CLI frontend for ethereum-analyzer.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.conduit-combinators)
          (hsPkgs.ethereum-analyzer-deps)
          (hsPkgs.exceptions)
          (hsPkgs.hexstring)
          (hsPkgs.http-conduit)
          (hsPkgs.json-rpc)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          ];
        };
      exes = {
        "ea-dump-contract" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.ethereum-analyzer)
            (hsPkgs.ethereum-analyzer-cli)
            (hsPkgs.ethereum-analyzer-deps)
            (hsPkgs.hflags)
            (hsPkgs.monad-logger)
            (hsPkgs.mtl)
            (hsPkgs.text)
            ];
          };
        };
      };
    }