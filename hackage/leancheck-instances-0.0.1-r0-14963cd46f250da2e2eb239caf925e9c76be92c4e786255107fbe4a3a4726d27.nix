{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = {
        name = "leancheck-instances";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Rudy Matela <rudy@matela.com.br>";
      author = "Rudy Matela <rudy@matela.com.br>";
      homepage = "https://github.com/rudymatela/leancheck-instances#readme";
      url = "";
      synopsis = "Common LeanCheck instances";
      description = "Listable instances for types provided by the Haskell Platform.\n\nThe current objective is to include all types supported by quickcheck-instances:\n<https://hackage.haskell.org/package/quickcheck-instances>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.leancheck)
          (hsPkgs.bytestring)
          (hsPkgs.nats)
          (hsPkgs.text)
        ];
      };
      tests = {
        "main" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.leancheck)
            (hsPkgs.leancheck-instances)
            (hsPkgs.bytestring)
            (hsPkgs.nats)
            (hsPkgs.text)
          ];
        };
        "text" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.leancheck)
            (hsPkgs.leancheck-instances)
            (hsPkgs.text)
          ];
        };
      };
    };
  }