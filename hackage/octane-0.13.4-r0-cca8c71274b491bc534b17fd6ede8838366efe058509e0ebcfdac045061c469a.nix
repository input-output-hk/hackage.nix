{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "octane"; version = "0.13.4"; };
      license = "MIT";
      copyright = "";
      maintainer = "Taylor Fausak";
      author = "";
      homepage = "https://github.com/tfausak/octane#readme";
      url = "";
      synopsis = "Parse Rocket League replays.";
      description = "Octane parses Rocket League replays.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bimap)
          (hsPkgs.binary)
          (hsPkgs.binary-bits)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-binary-ieee754)
          (hsPkgs.deepseq)
          (hsPkgs.file-embed)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.regex-compat)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          ];
        };
      exes = { "octane" = { depends = [ (hsPkgs.base) (hsPkgs.octane) ]; }; };
      tests = {
        "octane-doctest" = {
          depends = [ (hsPkgs.base) (hsPkgs.octane) (hsPkgs.doctest) ];
          };
        "octane-test-suite" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.octane)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
            ];
          };
        };
      benchmarks = {
        "octane-benchmark" = {
          depends = [ (hsPkgs.base) (hsPkgs.criterion) (hsPkgs.octane) ];
          };
        };
      };
    }