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
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<anton.kholomiov@gmail.com>";
      author = "Anton Kholomiov";
      homepage = "";
      url = "";
      synopsis = "Csound combinator library";
      description = "Csound code generator. See \"CsoundExpr.Tutorial\" for guides and examples.\nWARNING : API changes (see TemporalFunctor method tmap, and ./Changelog)";
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
          (hsPkgs.haskell98)
          (hsPkgs.Boolean)
          (hsPkgs.temporal-media)
        ];
      };
    };
  }