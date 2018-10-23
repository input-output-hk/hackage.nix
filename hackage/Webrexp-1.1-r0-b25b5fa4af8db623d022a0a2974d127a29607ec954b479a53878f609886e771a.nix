{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { optimize = false; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "Webrexp";
        version = "1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Vincent Berthoux (twinside@gmail.com)";
      author = "Vincent Berthoux";
      homepage = "";
      url = "";
      synopsis = "Regexp-like engine to scrap web data";
      description = "A web scrapping utility mixing CSS selector syntax and regular expressions";
      buildType = "Simple";
    };
    components = {
      "Webrexp" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.HTTP)
          (hsPkgs.HaXml)
          (hsPkgs.hxt)
          (hsPkgs.parsec)
          (hsPkgs.transformers)
          (hsPkgs.network)
          (hsPkgs.directory)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.regex-pcre-builtin)
          (hsPkgs.AttoJson)
          (hsPkgs.process)
          (hsPkgs.filepath)
          (hsPkgs.template-haskell)
        ];
      };
      exes = {
        "webrexp" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.HTTP)
            (hsPkgs.parsec)
            (hsPkgs.transformers)
            (hsPkgs.network)
            (hsPkgs.directory)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.array)
            (hsPkgs.regex-pcre-builtin)
            (hsPkgs.HaXml)
            (hsPkgs.hxt)
            (hsPkgs.AttoJson)
            (hsPkgs.process)
            (hsPkgs.filepath)
            (hsPkgs.template-haskell)
          ];
        };
      };
    };
  }