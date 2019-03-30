{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.22";
      identifier = { name = "fungll-combinators"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2019 L. Thomas van Binsbergen";
      maintainer = "L. Thomas van Binsbergen <ltvanbinsbergen@acm.org>";
      author = "L. Thomas van Binsbergen";
      homepage = "";
      url = "";
      synopsis = "GLL parser with simple combinator interface";
      description = "The package fungll-combinators provides generalised top-down parsing combinators according to the\nFUNGLL parsing algorithm [Van Binsbergen et al. 2018].\n\nPlease email any questions, comments and suggestions to the\nmaintainer.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.TypeCompose)
          (hsPkgs.pretty)
          (hsPkgs.text)
          (hsPkgs.regex-applicative)
          (hsPkgs.time)
          (hsPkgs.gll)
          ];
        };
      };
    }