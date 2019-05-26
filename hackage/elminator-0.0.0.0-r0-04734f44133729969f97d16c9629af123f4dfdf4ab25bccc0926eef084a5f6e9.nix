{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "elminator"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Sandeep.C.R";
      maintainer = "sandeep@sras.me";
      author = "Sandeep.C.R";
      homepage = "";
      url = "";
      synopsis = "Generate ELM types/encoders/decoders from Haskell types.";
      description = "Please see the README on GitHub at <https://github.com/sras/elminator#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          ];
        };
      tests = {
        "elminator-test" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.elminator)
            (hsPkgs.mtl)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            ];
          };
        };
      };
    }