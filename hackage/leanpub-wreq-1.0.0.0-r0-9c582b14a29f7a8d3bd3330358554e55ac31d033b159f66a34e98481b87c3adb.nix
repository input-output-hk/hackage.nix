{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "leanpub-wreq"; version = "1.0.0.0"; };
      license = "MIT";
      copyright = "2018 Typeclass Consulting, LLC";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Chris Martin";
      homepage = "https://github.com/typeclasses/leanpub";
      url = "";
      synopsis = "Use the Leanpub API via Wreq";
      description = "This package helps you make requests to the\n<https://leanpub.com/help/api Leanpub API> in conjunction with\nthe <https://hackage.haskell.org/package/wreq wreq> package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.exceptions)
          (hsPkgs.lens)
          (hsPkgs.leanpub-concepts)
          (hsPkgs.rando)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.wreq)
          ];
        };
      };
    }