{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "mismi-core"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Nick Hibberd <nhibberd@gmail.com>";
      author = "Nick Hibberd";
      homepage = "https://github.com/nhibberd/mismi";
      url = "";
      synopsis = "AWS Library";
      description = "mismi-core is a library designed on top of amazonka and\namazonka-core that aims to provide useful functions around safety,\nfunctionality and robustness, for example: retrying, bracketing,\nenabling debugging and runner functions with error handling.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mismi-kernel)
          (hsPkgs.mismi-p)
          (hsPkgs.amazonka)
          (hsPkgs.amazonka-core)
          (hsPkgs.bytestring)
          (hsPkgs.exceptions)
          (hsPkgs.http-client)
          (hsPkgs.http-types)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.resourcet)
          (hsPkgs.retry)
          (hsPkgs.text)
          (hsPkgs.transformers)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mismi-core)
            (hsPkgs.mismi-p)
            (hsPkgs.mmorph)
            (hsPkgs.amazonka-core)
            (hsPkgs.hedgehog)
            (hsPkgs.transformers)
            ];
          };
        "test-io" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mismi-core)
            (hsPkgs.mismi-core-test)
            (hsPkgs.mismi-p)
            (hsPkgs.mmorph)
            (hsPkgs.amazonka-core)
            (hsPkgs.hedgehog)
            (hsPkgs.exceptions)
            (hsPkgs.resourcet)
            (hsPkgs.transformers)
            ];
          };
        };
      };
    }