{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "invertible-grammar"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Eugene Smolanka <esmolanka@gmail.com>";
      author = "Eugene Smolanka, Sergey Vinokurov";
      homepage = "https://github.com/esmolanka/invertible-grammar";
      url = "";
      synopsis = "Invertible parsing combinators framework";
      description = "Grammar combinator framework to build invertible parsing libraries\nfor concrete syntax.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.prettyprinter)
          (hsPkgs.profunctors)
          (hsPkgs.semigroups)
          (hsPkgs.tagged)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
          (hsPkgs.text)
          ];
        };
      };
    }