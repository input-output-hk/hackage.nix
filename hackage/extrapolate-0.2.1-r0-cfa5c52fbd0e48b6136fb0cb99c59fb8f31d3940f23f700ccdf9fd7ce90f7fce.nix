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
        name = "extrapolate";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Rudy Matela <rudy@matela.com.br>";
      author = "Rudy Matela";
      homepage = "https://github.com/rudymatela/extrapolate#readme";
      url = "";
      synopsis = "generalize counter-examples of test properties";
      description = "Extrapolate is a tool able to provide generalized counter-examples of test\nproperties where irrelevant sub-expressions are replaces with variables.\n\nFor the incorrect property @\\xs -> nub xs == (xs::[Int])@:\n\n* @[0,0]@ is a counter-example;\n\n* @x:x:_@ is a generalized counter-example.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.leancheck)
          (hsPkgs.template-haskell)
          (hsPkgs.speculate)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.leancheck)
            (hsPkgs.speculate)
            (hsPkgs.template-haskell)
          ];
        };
        "derive" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.leancheck)
            (hsPkgs.speculate)
            (hsPkgs.template-haskell)
          ];
        };
      };
    };
  }