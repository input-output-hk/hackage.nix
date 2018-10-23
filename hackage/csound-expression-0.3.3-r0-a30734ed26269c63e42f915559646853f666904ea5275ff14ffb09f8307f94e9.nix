{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "csound-expression";
        version = "0.3.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<anton.kholomiov@gmail.com>";
      author = "Anton Kholomiov";
      homepage = "";
      url = "";
      synopsis = "Csound combinator library";
      description = "Csound code generator. See root module \"CsoundExpr\"\nfor introduction guides. Score module is no longer\navailable inside 'csound-expression' package, consider\nusing 'temporal-media' or 'temporal-music-notation'\npackages. See source directory for examples.";
      buildType = "Simple";
    };
    components = {
      "csound-expression" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.pretty)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.process)
          (hsPkgs.Boolean)
          (hsPkgs.temporal-music-notation)
        ];
      };
    };
  }